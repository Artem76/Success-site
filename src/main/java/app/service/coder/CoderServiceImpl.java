package app.service.coder;

import org.springframework.stereotype.Service;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@Service
public class CoderServiceImpl implements CoderService{

    @Override
    public String coderSHA1(String password){
        MessageDigest mDigest = null;

        try {
            mDigest = MessageDigest.getInstance("SHA1");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        byte[] result = mDigest.digest(password.getBytes());
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < result.length; i++) {
            sb.append(Integer.toString((result[i] & 0xff) + 0x100, 16).substring(1));
        }
        return sb.toString();
    }

    @Override
    public String encoderUtf8ToWindows1251(String str) {
        try {
            str = new String(str.getBytes("UTF-8"), "windows-1251");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return str;
    }

    @Override
    public String encoderWindows1251ToUtf8(String str) {
        try {
            str = new String(str.getBytes("windows-1251"), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return str;
    }
}
