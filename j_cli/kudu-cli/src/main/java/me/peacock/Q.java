package me.peacock;
import java.util.*;

/**
 * @program: j_cli
 * @author: wuren
 * @create: 2021/10/12
 **/
public class Q {
    public static void main(String[] args){
        Scanner cin=new Scanner(System.in);//输入查询的月份
        int n=cin.nextInt();
        System.out.print(new solution().demo(n));
    }
}

class solution{
    public int demo(int n){
        if(n <= 2){
            return 1;
        }
        int[] dp=new int[n+1];
        dp[1]=1;
        dp[2]=1;
        for(int i=3;i<=n;i++){
            dp[i]=dp[i-1]+dp[i-2];
        }
        return dp[n];
    }
}
