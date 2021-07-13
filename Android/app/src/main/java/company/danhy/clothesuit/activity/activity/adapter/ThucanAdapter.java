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

public class ThucanAdapter extends BaseAdapter {
    Context context;
    ArrayList<Sanpham> arrayListta;

    public ThucanAdapter(Context context, ArrayList<Sanpham> arrayListta) {
        this.context = context;
        this.arrayListta = arrayListta;
    }

    @Override
    public int getCount() {
        return arrayListta.size();
    }

    @Override
    public Object getItem(int position) {
        return arrayListta.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }
    public class ViewHolder {
        public TextView txttenta,txtgiata,txtmotata;
        public ImageView imgta;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder viewHolder =null;
        if (convertView==null){
            viewHolder=new ViewHolder();
            LayoutInflater inflater= (LayoutInflater) context.getSystemService(context.LAYOUT_INFLATER_SERVICE);
            convertView=inflater.inflate(R.layout.dong_thucan,null);
            viewHolder.txttenta=convertView.findViewById(R.id.textviewtenta);
            viewHolder.txtgiata=convertView.findViewById(R.id.textviewgiata);
            viewHolder.txtmotata=convertView.findViewById(R.id.textviewmotata);
            viewHolder.imgta=convertView.findViewById(R.id.imageta);
            convertView.setTag(viewHolder);
        }else{
            viewHolder= (ViewHolder) convertView.getTag();
        }
        Sanpham sanpham= (Sanpham) getItem(position);
        viewHolder.txttenta.setText(sanpham.getTensanpham());
        DecimalFormat decimalFormat =new DecimalFormat("###,###,###");
        viewHolder.txtgiata.setText("Giá: "+ decimalFormat.format(sanpham.getGiasanpham())+"VNĐ");
        viewHolder.txtmotata.setMaxLines(2);
        viewHolder.txtmotata.setEllipsize(TextUtils.TruncateAt.END);
        viewHolder.txtmotata.setText(sanpham.getMotasanpham());
        Picasso.get().load(sanpham.getHinhanhsanpham())
                .placeholder(R.drawable.noimage)
                .error(R.drawable.error)
                .into(viewHolder.imgta);
        return convertView;
    }
}
