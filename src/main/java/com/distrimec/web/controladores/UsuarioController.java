package com.distrimec.web.controladores;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.distrimec.web.modelos.entidades.Usuario;
import com.distrimec.web.servicios.UsuarioServicio;


@Controller
@RequestMapping("/usuarios")
public class UsuarioController {

    private final UsuarioServicio usuarioServicio;

    public UsuarioController(UsuarioServicio usuarioServicio) {
        this.usuarioServicio = usuarioServicio;
    }

    @GetMapping("/")
    public String listarUsuarios(Model model) {
        model.addAttribute("usuarios", usuarioServicio.listarUsuarios());
        return "usuarios/listar";
    }

    @GetMapping("/crear")
    public String mostrarFormularioCrear(Model model) {
        model.addAttribute("usuario", new Usuario());
        return "usuarios/crear";
    }

    @PostMapping("/crear")
    public String crearUsuario(@ModelAttribute("usuario") Usuario usuario) {
        usuarioServicio.crearUsuario(usuario);
        return "redirect:/usuarios/";
    }

    @GetMapping("/editar/{id}")
    public String mostrarFormularioEditar(@PathVariable("id") Integer id, Model model) {
        Usuario usuario = usuarioServicio.obtenerUsuario(id);
        model.addAttribute("usuario", usuario);
        return "usuarios/editar";
    }

    @PostMapping("/editar/{id}")
    public String editarUsuario(@PathVariable("id") Integer id, @ModelAttribute("usuario") Usuario usuario) {
        usuario.setCodUsuario(id);
        usuarioServicio.editarUsuario(usuario);
        return "redirect:/usuarios/";
    }

    @GetMapping("/eliminar/{id}")
    public String eliminarUsuario(@PathVariable("id") Integer id) {
        usuarioServicio.eliminarUsuario(id);
        return "redirect:/usuarios/";
    }
}
