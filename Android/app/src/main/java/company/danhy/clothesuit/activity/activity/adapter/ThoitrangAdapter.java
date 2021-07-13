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

public class ThoitrangAdapter extends BaseAdapter {
    Context context;
    ArrayList<Sanpham> arrayListthoitrang;

    public ThoitrangAdapter(Context context, ArrayList<Sanpham> arrayListthoitrang) {
        this.context = context;
        this.arrayListthoitrang = arrayListthoitrang;
    }

    @Override
    public int getCount() {
        return arrayListthoitrang.size();
    }

    @Override
    public Object getItem(int position) {
        return arrayListthoitrang.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }
    public class ViewHolder {
        public TextView txttensp,txtgiasp,txtmotasp;
        public ImageView imgsp;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder viewHolder =null;
        if (convertView==null){
            viewHolder=new ViewHolder();
            LayoutInflater inflater= (LayoutInflater) context.getSystemService(context.LAYOUT_INFLATER_SERVICE);
            convertView=inflater.inflate(R.layout.dong_thoitrang,null);
            viewHolder.txttensp=convertView.findViewById(R.id.textviewtentt);
            viewHolder.txtgiasp=convertView.findViewById(R.id.textviewgiatt);
            viewHolder.txtmotasp=convertView.findViewById(R.id.textviewmotatt);
            viewHolder.imgsp=convertView.findViewById(R.id.imagethoitrang);
            convertView.setTag(viewHolder);
        }else{
            viewHolder= (ViewHolder) convertView.getTag();
        }
        Sanpham sanpham= (Sanpham) getItem(position);
        viewHolder.txttensp.setText(sanpham.getTensanpham());
        DecimalFormat decimalFormat =new DecimalFormat("###,###,###");
        viewHolder.txtgiasp.setText("Giá: "+ decimalFormat.format(sanpham.getGiasanpham())+"VNĐ");
        viewHolder.txtmotasp.setMaxLines(2);
        viewHolder.txtmotasp.setEllipsize(TextUtils.TruncateAt.END);
        viewHolder.txtmotasp.setText(sanpham.getMotasanpham());
        Picasso.get().load(sanpham.getHinhanhsanpham())
                .placeholder(R.drawable.noimage)
                .error(R.drawable.error)
                .into(viewHolder.imgsp);
        return convertView;
    }
}
