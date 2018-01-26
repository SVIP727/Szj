package com.szj.common;

import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.annotate.JsonSerialize.Inclusion;
import org.codehaus.jackson.type.TypeReference;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

@SuppressWarnings("unchecked")
public final class JsonUtil {

    private static ObjectMapper MAPPER;


    private JsonUtil() {
    }

    public static ObjectMapper mapper() {
        return MAPPER;
    }


    public static <T> String toJson(T src) throws IOException {
        return src instanceof String ? (String) src : MAPPER.writeValueAsString(src);
    }


   /* public static <T> String toJson(T src, ObjectMapper mapper) throws IOException {
        if (null != mapper) {
            if (src instanceof String) {
                return (String) src;
            } else {
                return mapper.writeValueAsString(src);
            }
        } else {
            return null;
        }
    }*/
    

    public static String sucJsonResp(Object message) {
        Map<String, Object> successMap = new HashMap<String, Object>();
        successMap.put("success", true);
        successMap.put("msg", message);
        try {
			return toJson(successMap);
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
    }
	
	public static String failJsonResp(String message) {
        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("success", false);
        resultMap.put("msg", message);
        try {
			return toJson(resultMap);
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
    }
}