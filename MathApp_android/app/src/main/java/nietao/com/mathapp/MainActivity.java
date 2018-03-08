package nietao.com.mathapp;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.widget.EditText;
import android.widget.TextView;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

import static java.lang.Math.sqrt;

public class MainActivity extends AppCompatActivity {

    @BindView(R.id.A_Text)
    EditText A_EditText;
    @BindView(R.id.B_Text)
    EditText B_EditText;
    @BindView(R.id.C_Text)
    EditText C_EditText;
    @BindView(R.id.res_Text)
    TextView textView;

    @OnClick(R.id.Btn) void sumit(){
        if (A_EditText.getText().toString().isEmpty() ||
            B_EditText.getText().toString().isEmpty() ||
            C_EditText.getText().toString().isEmpty() ) {
            textView.setText("完全输入才能计算");
        } else {
            MathFunc();
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ButterKnife.bind(this);

    }

    private void  MathFunc(){
        Double a = Double.valueOf( A_EditText.getText().toString());
        Double b = Double.valueOf( B_EditText.getText().toString());
        Double c = Double.valueOf( C_EditText.getText().toString());

        Double p = Double.valueOf ((a + b + c))/2.0;
        Double s = sqrt(p * (p - a)*(p - b)*(p - c));

        Double e = Double.valueOf(Double.valueOf(2*s)/Double.valueOf(b));

        //固定bc 边
        String des = "";
        Double bd = sqrt(a * a - e * e);
        Double dc = b - bd;
        des = getString(bd, dc, e);
        textView.setText(des);
    }

    private  String getString(Double bd, Double dc, Double bc){
        return " bd = " + String.format("%.2f",bd) + "\n dc = " + String.format("%.2f",dc) + "\n ad = " + String.format("%.2f",bc);
    }
}
