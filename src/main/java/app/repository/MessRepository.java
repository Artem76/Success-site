package app.repository;

import app.entity.Mess;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface MessRepository extends JpaRepository<Mess, Long> {
    @Query("SELECT m FROM Mess m ORDER BY date DESC ")
    List<Mess> findAllSort();
}
