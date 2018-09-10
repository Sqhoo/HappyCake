package com.happycake.util;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: skylin
 * Date: 2018-08-27
 * Time: 下午9:45
 */
/*计算呢两个数组是否为子集关系*/
public class Subset {
    public static boolean checkSubset(String[] arr1s,String[] arr2s){
        int num=0;
        for (String arr1:
             arr1s) {
            for (String arr2:
                 arr2s) {
                if (arr1.equals(arr2)){
                    num++;
                    break;
                }
            }
        }
        return num == arr1s.length;
    }
}
