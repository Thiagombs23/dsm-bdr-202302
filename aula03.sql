create database bd_aula03;
\c db_aula03;
create table tbl_cliente(codigo_cliente integer PRIMARY KEY,nome text NOT NULL,cidade text,endereco text);
create table tbl_emprestimo(numero_emprestimo integer[10] PRIMARY KEY,codigo_cliente varchar [15], codigo_livro integer [10]);
create table tbl_titulo(codigo_titulo varchar [10] PRIMARY KEY, titulo integer[10] NOT NULL, categoria text);
create table tbl_livros(cod_livro varchar [10] PRIMARY KEY, codigo_livro integer [10], status text);