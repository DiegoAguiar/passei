package br.com.passei.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.passei.dao.ComentarioDao;
import br.com.passei.dao.MenuDao;
import br.com.passei.dao.PostagemDao;
import br.com.passei.main.MenuLateral;
import br.com.passei.main.Postagem;

@Controller
public class ViewController {
	@RequestMapping("/")
	public String execute() {
		return "index";
	}

	@RequestMapping("/caroussel")
	public String executeCaroussel() {
		return "carousselPassei";
	}

	@RequestMapping("/lMenu")
	public String executeLmenu(Model model) throws SQLException,
			ClassNotFoundException {
		MenuDao dao = new MenuDao();
		ArrayList<MenuLateral> menu = dao.getAllMenu();
		model.addAttribute("menu", menu);
		return "lMenu";
	}

	@RequestMapping("/conteudoHome")
	public String executaConteudoHome(Model model) throws SQLException,
			ClassNotFoundException {
		PostagemDao dao = new PostagemDao();
		ArrayList<Postagem> conteudo = dao.getPostagemHome();
		model.addAttribute("conteudo", conteudo);
		return "conteudo";

	}

	@RequestMapping("/conteudo")
	public String executeConteudo(Model model, @RequestParam String assunto)
			throws ClassNotFoundException, SQLException {
		PostagemDao dao = new PostagemDao();
		ArrayList<Postagem> conteudo = dao.getAllPostagemPorAssunto(assunto);
		model.addAttribute("conteudo", conteudo);
		return "conteudo";
	}

	@RequestMapping("/detalhamento")
	public String executeDetalhamento(Model model, @RequestParam int idpostagem)
			throws ClassNotFoundException, SQLException {
		PostagemDao dao = new PostagemDao();
		ArrayList<Postagem> postagem = dao.getPostagemPorId(idpostagem);
		model.addAttribute("postagem", postagem);
		return "detalhamento";
	}

	@RequestMapping("/novidades")
	public String executeNovidades(Model model) throws SQLException,
			ClassNotFoundException {
		PostagemDao dao = new PostagemDao();
		ArrayList<Postagem> postagens = dao.getNovidadesCasts();
		model.addAttribute("novidades", postagens);
		return "novidades";
	}

	@RequestMapping("/comentario")
	public String executaComentario(Model model, @RequestParam int idpostagem,
			@RequestParam String nome, @RequestParam String email,
			@RequestParam String mensagem) throws SQLException,
			ClassNotFoundException {
		ComentarioDao dao = new ComentarioDao();
		dao.insereNovoComentario(idpostagem, nome, email, mensagem);
		return "index";
	}

	@RequestMapping(value = "/navegacao/{modulo}/{submodulo}", method = RequestMethod.GET)
	public String executaBusca(@PathVariable(value = "modulo") String modulo,
			@PathVariable(value = "submodulo") String submodulo, Model model) throws ClassNotFoundException, SQLException {
		PostagemDao dao = new PostagemDao();
		ArrayList<Postagem> conteudo = dao.getAllPostagemPorAssunto('#'+modulo+'/'+submodulo);
		model.addAttribute("conteudo", conteudo);
		System.out.println("teste");
		return "indexFavoritosConteudo";
	}
	
	@RequestMapping("/buscar")
	public String executaBusca(@RequestParam String busca, Model model) throws ClassNotFoundException, SQLException{
		PostagemDao dao = new PostagemDao();
		ArrayList<Postagem> resultado = dao.getBuscaPostagem(busca);
		model.addAttribute("conteudo",resultado);
		return "conteudo";
	}

}
