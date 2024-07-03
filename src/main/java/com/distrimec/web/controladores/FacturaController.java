package com.distrimec.web.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.distrimec.web.modelos.entidades.Producto;
import com.distrimec.web.servicios.ProductoService;

@Controller
@RequestMapping("/factura")
public class FacturaController {

    @Autowired
    private ProductoService productoService;

    @GetMapping("/venta")
    public String login(Model model) {        
        List<Producto> productos = productoService.obtenerTodosLosProductos();
        model.addAttribute("productos", productos);        
        return "facturas/facturaVenta";
    }
}
