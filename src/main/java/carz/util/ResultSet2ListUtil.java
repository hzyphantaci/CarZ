package carz.util;

import java.lang.reflect.Method;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.Date;

public class ResultSet2ListUtil {
	public static <T> ArrayList<T> putResult(ResultSet rs, Class<T> obj) {
		try {
			ArrayList<T> arrayList = new ArrayList<T>();
			ResultSetMetaData metaData = rs.getMetaData();
			int count = metaData.getColumnCount();
			while (rs.next()) {
				T newInstance = obj.newInstance();
				for (int i = 1; i <= count; i++) {
					String name = metaData.getColumnName(i).toLowerCase();
					name = toJavaField(name);
					String substring = name.substring(0, 1);
					String replace = name.replaceFirst(substring,
							substring.toUpperCase());
					Class<?> type = obj.getDeclaredField(name).getType();
					Method method = obj.getMethod("set" + replace, type);
					if (type.isAssignableFrom(String.class)) {
						method.invoke(newInstance, rs.getString(i));
					} else if (type.isAssignableFrom(int.class)
							|| type.isAssignableFrom(Integer.class)) {
						method.invoke(newInstance, rs.getInt(i));
					} else if (type.isAssignableFrom(Boolean.class)
							|| type.isAssignableFrom(boolean.class)) {
						method.invoke(newInstance, rs.getBoolean(i));
					} else if (type.isAssignableFrom(Date.class)) {
						method.invoke(newInstance, rs.getDate(i));
					}
				}
				arrayList.add(newInstance);
			}
			return arrayList;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public static String toJavaField(String str) {
		String[] split = str.split("_");
		StringBuilder builder = new StringBuilder();
		builder.append(split[0]);// 拼接第一个字符
		if (split.length > 1) {
			for (int i = 1; i < split.length; i++) {
				// 去掉下划线，首字母变为大写
				String string = split[i];
				String substring = string.substring(0, 1);
				split[i] = string.replaceFirst(substring,
						substring.toUpperCase());
				builder.append(split[i]);
			}
		}
		return builder.toString();
	}
}
