package company.danhy.clothesuit.activity.activity.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.squareup.picasso.Picasso;

import java.util.ArrayList;

import company.danhy.clothesuit.R;
import company.danhy.clothesuit.activity.activity.model.Dichvu;
import company.danhy.clothesuit.activity.activity.model.Loaisp;

public class DichvuAdapter extends BaseAdapter {
    ArrayList<Dichvu> arrayListdichvu;
    Context context;

    public DichvuAdapter(ArrayList<Dichvu> arrayListdichvu, Context context) {
        this.arrayListdichvu = arrayListdichvu;
        this.context = context;
    }

    @Override
    public int getCount() {
        return arrayListdichvu.size();
    }

    @Override
    public Object getItem(int position) {
        return arrayListdichvu.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }
    public class ViewHolder{
        TextView txttendichvu;
        ImageView imgdichvu;
    }
    @Override
    public View getView(int position, View view, ViewGroup parent) {
        ViewHolder viewHolder = null;
        if(view==null){
            viewHolder=new ViewHolder();
            LayoutInflater inflater= (LayoutInflater) context.getSystemService(context.LAYOUT_INFLATER_SERVICE);
            view =inflater.inflate(R.layout.dong_dichvu,null);
            viewHolder.txttendichvu=view.findViewById(R.id.textviewtendv);
            viewHolder.imgdichvu=view.findViewById(R.id.imagedichvu);
            view.setTag(viewHolder);
        }else{
            viewHolder= (ViewHolder) view.getTag();
        }
        Dichvu dichvu = (Dichvu) getItem(position);
        viewHolder.txttendichvu.setText(dichvu.getTendichvu());
        Picasso.get().load(dichvu.getHinhanhdichvu())
                .placeholder(R.drawable.noimage)
                .error(R.drawable.error)
                .into(viewHolder.imgdichvu);
        return view;
    }
}
