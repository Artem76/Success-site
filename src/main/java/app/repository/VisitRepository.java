package app.repository;

import app.entity.Visit;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Date;
import java.util.List;

public interface VisitRepository extends JpaRepository<Visit, Long> {
    @Query("SELECT v FROM Visit v WHERE v.date > :date")
    List<Visit> findByDateMore(@Param("date") Date date);

    @Query("SELECT v FROM Visit v WHERE v.date < :date or v.date = :date")
    List<Visit> findByDateLess(@Param("date") Date date);

    @Query("SELECT v FROM Visit v WHERE v.date > :date and v.ipClient = :ipClient")
    List <Visit> findByDateAndIPMore(@Param("date") Date date, @Param("ipClient") String ipClient);
}
