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

public class DungcuhangngayAdapter extends BaseAdapter {
    Context context;
    ArrayList<Sanpham> arrayListdungcuhangngay;

    public DungcuhangngayAdapter(Context context, ArrayList<Sanpham> arrayListdungcuhangngay) {
        this.context = context;
        this.arrayListdungcuhangngay = arrayListdungcuhangngay;
    }

    @Override
    public int getCount() {
        return arrayListdungcuhangngay.size();
    }

    @Override
    public Object getItem(int position) {
        return arrayListdungcuhangngay.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }
    public class ViewHolder {
        public TextView txttendchn,txtgiadchn,txtmotadchn;
        public ImageView imgdchn;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder viewHolder =null;
        if (convertView==null){
            viewHolder=new ViewHolder();
            LayoutInflater inflater= (LayoutInflater) context.getSystemService(context.LAYOUT_INFLATER_SERVICE);
            convertView=inflater.inflate(R.layout.dong_dungcuhangngay,null);
            viewHolder.txttendchn=convertView.findViewById(R.id.textviewtendchn);
            viewHolder.txtgiadchn=convertView.findViewById(R.id.textviewgiadchn);
            viewHolder.txtmotadchn=convertView.findViewById(R.id.textviewmotadchn);
            viewHolder.imgdchn=convertView.findViewById(R.id.imagedchn);
            convertView.setTag(viewHolder);
        }else{
            viewHolder= (ViewHolder) convertView.getTag();
        }
        Sanpham sanpham= (Sanpham) getItem(position);
        viewHolder.txttendchn.setText(sanpham.getTensanpham());
        DecimalFormat decimalFormat =new DecimalFormat("###,###,###");
        viewHolder.txtgiadchn.setText("Giá: "+ decimalFormat.format(sanpham.getGiasanpham())+"VNĐ");
        viewHolder.txtmotadchn.setMaxLines(2);
        viewHolder.txtmotadchn.setEllipsize(TextUtils.TruncateAt.END);
        viewHolder.txtmotadchn.setText(sanpham.getMotasanpham());
        Picasso.get().load(sanpham.getHinhanhsanpham())
                .placeholder(R.drawable.noimage)
                .error(R.drawable.error)
                .into(viewHolder.imgdchn);
        return convertView;
    }
}
