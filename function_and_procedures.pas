unit function_and_procedures;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btn_privateRequest: TButton;
    btn_publicRequest: TButton;
    procedure btn_privateRequestClick(Sender: TObject);
    procedure btn_publicRequestClick(Sender: TObject);

    // Todos os eventos que ficarem acima de private serão visiveis no Structure da IDE


  private
    { Private Declarations

    Tudo oque vier dentro das declarações privadas serão somente acessadas
    pelo form em que foi definido.

    }

    procedure privateProcedure;

    // A definição de uma função sem parametro deve-se seguir a seguinte syntax

    function privateFunction: string;

  public
    { Public declarations

    As declarações publicas poderão ser acessadas a partir de qualquer form
    que esteja no projeto.
    }

    procedure publicProcedure;
    function publicFunction: string;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

  { Syntax das Implementações

  As implementações de function, proceddures e varios tipos de eventos devem
  por padrão sempre seguirem abaixo da palavra reservada implementation no Form
  e seguir a seguinte Syntax

  // Procedures Implementation

  procedure nome_form.nomeProcedure;
  begin = inicio
    codigo
  end; = fim;

  // Function Implementation

  function nome_form.nomeFunção: tipo_de_retorno
  begin = inicio
    codigo

    // toda function vem acompanhada de um retorno utilizando a palavra Result
    Result := retorno
  end; = fim;

  // Implementação de Eventos

  procedure nome_form.tipoEvento(Sender: TObject);
  begin = inicio
    // Aqui deveremos chamar todas as procedures e funções que serão acionadas
    // ao realizarmos o evento. Exemplo:

    nome_procedure;
    nome_function;

    Como padrão de um bom codigo que eu implemento recomendo que seja criado um
    procedure ou uma function contendo todas as regras de serviço e ai sim
    chamar essa procedure no botão.

    Sempre minimizando codigos de processamentos complexos diretamente nos
    componentes.
  end; = fim;
  }

procedure TForm1.btn_privateRequestClick(Sender: TObject);
begin
     privateProcedure;
end;

procedure  TForm1.privateProcedure;
begin
     showMessage('A procedure private esta funcional');
     showMessage(privateFunction)
end;


function TForm1.privateFunction: string;
begin
  Result := 'A função private esta funcional';
end;

procedure TForm1.btn_publicRequestClick(Sender: TObject);
begin
     publicProcedure;
end;

procedure TForm1.publicProcedure;
begin
  showMessage('A procedure publica estã funcional');
  showMessage(publicFunction);
end;

function TForm1.publicFunction: string;
begin
  Result := 'A função publica esta funcional';
end;
end.
