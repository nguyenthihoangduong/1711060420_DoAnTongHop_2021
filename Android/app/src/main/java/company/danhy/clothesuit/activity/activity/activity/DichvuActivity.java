package company.danhy.clothesuit.activity.activity.activity;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.support.design.widget.NavigationView;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import android.widget.ViewFlipper;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonArrayRequest;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.squareup.picasso.Picasso;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import company.danhy.clothesuit.R;
import company.danhy.clothesuit.activity.activity.adapter.DichvuAdapter;
import company.danhy.clothesuit.activity.activity.adapter.LoaispAdapter;
import company.danhy.clothesuit.activity.activity.adapter.SanPhamFlashSaleAdapter;
import company.danhy.clothesuit.activity.activity.adapter.SanphamAdapter;
import company.danhy.clothesuit.activity.activity.model.Dichvu;
import company.danhy.clothesuit.activity.activity.model.Giohang;
import company.danhy.clothesuit.activity.activity.model.Loaisp;
import company.danhy.clothesuit.activity.activity.model.Sanpham;
import company.danhy.clothesuit.activity.activity.ultil.Server;
import company.danhy.clothesuit.activity.activity.ultil.checkconnect;

public class DichvuActivity extends AppCompatActivity {
    Toolbar toolbardv ;
    ListView listViewdv;

    ArrayList <Dichvu> mangdichvu;
    DichvuAdapter dichvuAdapter;

    int id=0;
    String tendichvu="";
    String hinhanhdichvu="";

    public static ArrayList<Giohang>manggiohang;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_dichvu);
        AnhXa();
        if(checkconnect.isNetworkAvailable(getApplicationContext())){
            ActionBar();
            getDuLieuDichvu();
        }else{
            checkconnect.ShowToast_Short(getApplicationContext(),"Bạn kiểm tra lại kết nối ");
            finish();
        }

    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menuu,menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
//        User user = userLocalStore.getLoggedInUser();
        switch(item.getItemId()){
            case R.id.menugiohang:
                Intent intent=new Intent(getApplicationContext(), GiohangActivity.class);
                startActivity(intent);
        }
        return super.onOptionsItemSelected(item);
    }

    private void getDuLieuDichvu() {
        RequestQueue requestQueue = Volley.newRequestQueue(getApplicationContext());
        JsonArrayRequest jsonArrayRequest=new JsonArrayRequest(Server.duongDanDichVu, new Response.Listener<JSONArray>() {
            @Override
            public void onResponse(JSONArray response) {
                if(response != null){

                    for(int i = 0;i < response.length();i++){
                        try {
                            JSONObject jsonObject =response.getJSONObject(i);
                            id =jsonObject.getInt("id");
                            Log.d("test", id+".......................");
                            tendichvu=jsonObject.getString("tendichvu");
                            Log.d("test", tendichvu+".......................");
                            hinhanhdichvu =jsonObject.getString("hinhanhdichvu");
                            mangdichvu.add(new Dichvu(id,tendichvu,hinhanhdichvu));
                            dichvuAdapter.notifyDataSetChanged();
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                    Toast.makeText(getApplicationContext(), tendichvu, Toast.LENGTH_SHORT).show();

                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                Log.d("test", error.getMessage());
                checkconnect.ShowToast_Short(getApplicationContext(),error.toString());
            }
        });
        requestQueue.add(jsonArrayRequest);
    }

    private void ActionBar() {
        setSupportActionBar(toolbardv);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        toolbardv.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });
    }

    void AnhXa(){
        toolbardv = findViewById(R.id.toolbardv);
        listViewdv = findViewById(R.id.listviewdv);

        mangdichvu =new ArrayList<>();
        dichvuAdapter=new DichvuAdapter(mangdichvu,getApplicationContext());


        if(manggiohang!=null){

        }else{
            manggiohang=new ArrayList<>();
        }
    }
}
