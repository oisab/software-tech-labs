package ru.mtuci.simpleapi.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class Product extends AbstractBaseEntity {
//    @NotBlank
//    private String name;
//    @NotBlank
//    private String brand;
//    @NotNull
//    private Integer price;
//    @NotNull
//    private Integer quantity;
    @NotBlank
    private String purchase_code;
    @NotBlank
    private String last_name;
    @NotBlank
    private String first_name;
    @NotBlank
    private String patronymic;
    @NotBlank
    private String phone_number;
    @NotBlank
    private String postal_code;
    @NotBlank
    private String country;
    @NotBlank
    private String city;
    @NotBlank
    private String area;
    @NotBlank
    private String address;
    @NotNull
    private Boolean credit;
}
