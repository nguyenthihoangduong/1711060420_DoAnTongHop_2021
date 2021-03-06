package company.danhy.clothesuit.activity.activity.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import android.support.v7.widget.Toolbar;
import android.widget.Toast;

import java.text.DecimalFormat;

import company.danhy.clothesuit.R;
import company.danhy.clothesuit.activity.activity.adapter.GiohangAdapter;
import company.danhy.clothesuit.activity.activity.ultil.checkconnect;

public class GiohangActivity extends AppCompatActivity {
    ListView listViewgiohang;
    TextView txtthongbao;
    static TextView txttongtien;
    Button btthanhtoan,bttieptucmuahang;
    Toolbar toolbargiohang;
    GiohangAdapter giohangAdapter;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_giohang);
        anhxa();
        actionToolbar();
        checkData();
        evenUltil();
        DeletItem();
        evenButton();
    }

    private void evenButton() {
        bttieptucmuahang.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent =new Intent(getApplicationContext(),MainActivity.class);
                startActivity(intent);
            }
        });
        btthanhtoan.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(MainActivity.manggiohang.size()>0){
                    Intent intent=new Intent(getApplicationContext(), ThongtinkhachhangActivity.class);
                    startActivity(intent);
                }else{
                    checkconnect.ShowToast_Short(getApplicationContext(),"Gi??? h??ng c???a b???n ch??a c?? s???n ph???m ????? thanh to??n");

                }
            }
        });
    }

    private void DeletItem() {
        listViewgiohang.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() {
            @Override
            public boolean onItemLongClick(AdapterView<?> parent, View view, final int position, long id) {
                Toast.makeText(getApplicationContext(), "X??a", Toast.LENGTH_LONG).show();
                Log.d("a","b");
                AlertDialog.Builder builder=new AlertDialog.Builder(GiohangActivity.this);
                builder.setTitle("X??c nh???n x??a s???n ph???m");
                builder.setMessage("B???n c?? ch???c ch???n x??a s???n ph???m n??y");
                builder.setPositiveButton("C??", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                       if(MainActivity.manggiohang.size()<=0){
                           txtthongbao.setVisibility(View.VISIBLE);
                       }else {
                           MainActivity.manggiohang.remove(position);
                           giohangAdapter.notifyDataSetChanged();
                           evenUltil();
                           if(MainActivity.manggiohang.size()<=0){
                               txtthongbao.setVisibility(View.VISIBLE);
                           }else{
                               txtthongbao.setVisibility(View.INVISIBLE);
                               giohangAdapter.notifyDataSetChanged();
                               evenUltil();
                           }
                       }
                    }
                });
                builder.setNegativeButton("Kh??ng", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                      giohangAdapter.notifyDataSetChanged();
                      evenUltil();
                    }
                });
                builder.show();
                return true;
            }
        });
    }

    public static void evenUltil() {
        long tongtien=0;
        for(int i=0;i<MainActivity.manggiohang.size();i++){
            tongtien+=MainActivity.manggiohang.get(i).getGiasp();
        }
        DecimalFormat decimalFormat =new DecimalFormat("###,###,###");
        txttongtien.setText(decimalFormat.format(tongtien)+ "VN??");
    }

    private void checkData() {
        if(MainActivity.manggiohang.size()<=0){
            giohangAdapter.notifyDataSetChanged();
            txtthongbao.setVisibility(View.VISIBLE);
            listViewgiohang.setVisibility(View.INVISIBLE);
        }else{
            giohangAdapter.notifyDataSetChanged();
            txtthongbao.setVisibility(View.INVISIBLE);
            listViewgiohang.setVisibility(View.VISIBLE);
        }
    }

    private void actionToolbar() {
        setSupportActionBar(toolbargiohang);
        ActionBar actionBar=getSupportActionBar();
        actionBar.setDisplayHomeAsUpEnabled(true);
        toolbargiohang.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
    }

    private void anhxa() {
        listViewgiohang=findViewById(R.id.listviewgiohang);
        listViewgiohang.setLongClickable(true);
        txtthongbao=findViewById(R.id.textviewthongbaogiohangtrong);
        txttongtien=findViewById(R.id.textviewtongtien);
        btthanhtoan=findViewById(R.id.buttonthanhtoan);
        bttieptucmuahang=findViewById(R.id.buttontieptucmuahang);
        toolbargiohang=findViewById(R.id.toolbargiohang);
        giohangAdapter=new GiohangAdapter(GiohangActivity.this,MainActivity.manggiohang);
        listViewgiohang.setAdapter(giohangAdapter);
    }
}
