const Produto = require('../modelo/produtos');

const ProdutoController = {
    createProduto: async (req, res) => {
        try {
            const novoProduto = await Produto.create(req.body);
            res.json(novoProduto);
        } catch (error) {
            res.status(500).send(error.message);
        }
    },    
    
    getAllProdutos: async (req, res) => {
        try {
            const produtos = await Produto.findAll();

            res.json(produtos);
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    getProdutosByCategoria: async (req, res) => {
        try {
            const produtos = await Produto.findAll({
                where: {
                    categoria: req.params.categoria
                }
            });

            res.json(produtos);
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    getProdutoByNome: async (req, res) => {
        try {
            const produto = await Produto.findOne({
                where: {
                    nome: req.params.nome
                }
            });
            if (!produto) {
                return res.status(404).send('Produto não encontrado');
            }
            res.json(produto);
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    updateProduto: async (req, res) => {
        try {
            const produto = await Produto.findByPk(req.params.id);
            if (!produto) {
                return res.status(404).send('Produto não encontrado');
            }
            await produto.update(req.body);
            res.send('Produto atualizado com sucesso');
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    deleteProduto: async (req, res) => {
        try {
            const produto = await Produto.findByPk(req.params.id);
            if (!produto) {
                return res.status(404).send('Produto não encontrado');
            }
            await produto.destroy();
            res.send('Produto deletado com sucesso');
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    // Implementação das funções de controle de estoque
    // registrarEntrada e registrarSaida
    // ... (a ser implementado)
};

module.exports = ProdutoController;

