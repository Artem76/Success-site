package app.entity.enums;

public enum UserRole {
    ADMIN;

    @Override
    public String toString() {
        return "ROLE_" + name();
    }
}
