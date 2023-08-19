create database bd_aula03;
\c db_aula03;
create domain chk_status text check (value='disponivel' or value='indisponivel');
create domain chk_categoria text check (value='drama'or value='comedia');
create table tbl_livros(cod_livro varchar [10] PRIMARY KEY, codigo_titulo integer references tbl_titulo(codigo_titulo), status  chk_status);
create table tbl_titulo(codigo_titulo varchar [10] PRIMARY KEY, titulo integer[10] NOT NULL, categoria chk_categoria );
create table tbl_cliente(codigo_cliente integer PRIMARY KEY,nome text NOT NULL,cidade text,endereco text);
create table tbl_emprestimo(numero_emprestimo integer[10] PRIMARY KEY,codigo_cliente integer references tbl_livros (codigo_livro), codigo_livro integer [10]);
