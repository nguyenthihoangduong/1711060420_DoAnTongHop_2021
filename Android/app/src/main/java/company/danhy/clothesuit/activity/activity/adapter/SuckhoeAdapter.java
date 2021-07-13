package company.danhy.clothesuit.activity.activity.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.squareup.picasso.Picasso;

import java.text.DecimalFormat;
import java.util.ArrayList;

import company.danhy.clothesuit.R;
import company.danhy.clothesuit.activity.activity.model.Sanpham;

public class SuckhoeAdapter extends BaseAdapter {
    Context context;
    ArrayList<Sanpham> arrayListsuckhoe;

    public SuckhoeAdapter(Context context, ArrayList<Sanpham> arrayListsuckhoe) {
        this.context = context;
        this.arrayListsuckhoe = arrayListsuckhoe;
    }

    @Override
    public int getCount() {
        return arrayListsuckhoe.size();
    }

    @Override
    public Object getItem(int position) {
        return arrayListsuckhoe.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }
    public class ViewHolder {
        public TextView txttensk,txtgiask,txtmotask;
        public ImageView imgsk;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder viewHolder =null;
        if (convertView==null){
            viewHolder=new ViewHolder();
            LayoutInflater inflater= (LayoutInflater) context.getSystemService(context.LAYOUT_INFLATER_SERVICE);
            convertView=inflater.inflate(R.layout.dong_suckhoe,null);
            viewHolder.txttensk=convertView.findViewById(R.id.textviewtensk);
            viewHolder.txtgiask=convertView.findViewById(R.id.textviewgiask);
            viewHolder.txtmotask=convertView.findViewById(R.id.textviewmotask);
            viewHolder.imgsk=convertView.findViewById(R.id.imagesk);
            convertView.setTag(viewHolder);
        }else{
            viewHolder= (ViewHolder) convertView.getTag();
        }
        Sanpham sanpham= (Sanpham) getItem(position);
        viewHolder.txttensk.setText(sanpham.getTensanpham());
        DecimalFormat decimalFormat =new DecimalFormat("###,###,###");
        viewHolder.txtgiask.setText("Giá: "+ decimalFormat.format(sanpham.getGiasanpham())+"VNĐ");
        viewHolder.txtmotask.setMaxLines(2);
        viewHolder.txtmotask.setEllipsize(TextUtils.TruncateAt.END);
        viewHolder.txtmotask.setText(sanpham.getMotasanpham());
        Picasso.get().load(sanpham.getHinhanhsanpham())
                .placeholder(R.drawable.noimage)
                .error(R.drawable.error)
                .into(viewHolder.imgsk);
        return convertView;
    }
}

