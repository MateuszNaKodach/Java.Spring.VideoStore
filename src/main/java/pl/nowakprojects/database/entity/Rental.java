package pl.nowakprojects.database.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.annotation.CreatedDate;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

/**
 * Created by Mateusz on 22.04.2017.
 */
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Rental {

    @Id
    @GeneratedValue
    private Long id;

    @ManyToOne(cascade = CascadeType.REFRESH)
    private Customer customer;

    @ManyToOne
    private Movie movie;

    @Column(nullable = false, updatable = false)
    @CreatedDate
    private LocalDateTime rentDate = LocalDateTime.now();

    private LocalDateTime returnDate;


    public Rental(Customer customer, Movie movie) {
        this.customer = customer;
        this.movie = movie;
    }
}
