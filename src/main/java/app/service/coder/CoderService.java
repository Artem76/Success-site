package app.service.coder;


public interface CoderService {
    String coderSHA1(String password);
    String encoderUtf8ToWindows1251(String str);
    String encoderWindows1251ToUtf8(String str);
}
