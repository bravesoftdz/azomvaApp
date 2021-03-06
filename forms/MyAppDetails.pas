﻿unit MyAppDetails;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  Data.Bind.DBScope, System.Rtti, System.Bindings.Outputs, FMX.Bind.Editors,
  Data.Bind.EngExt, FMX.Bind.DBEngExt, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid,
  FMX.Bind.Grid, Data.Bind.Grid, System.Threading, FMX.MultiView, FMX.Ani,
  FMX.Layouts, FMX.LoadingIndicator,
  FMX.TabControl, Header, FMX.Memo, IdURI;

type
  TMyAppDetailsForm = class(TForm)
    RESTRequestMyApp: TRESTRequest;
    RESTResponseMyApp: TRESTResponse;
    RESTResponseDataSetAdapterMyApp: TRESTResponseDataSetAdapter;
    FDMemTableMyApp: TFDMemTable;
    RectanglePreloader: TRectangle;
    BindSourceDBMyApp: TBindSourceDB;
    BindingsList1: TBindingsList;
    FMXLoadingIndicator1: TFMXLoadingIndicator;
    RectangleMain: TRectangle;
    Rectangle2: TRectangle;
    FMXLoadingIndicator2: TFMXLoadingIndicator;
    RESTResponseDataSetAdapterBids: TRESTResponseDataSetAdapter;
    FDMemTableBids: TFDMemTable;
    FDMemTableBidsid: TWideStringField;
    FDMemTableBidsuser_id: TWideStringField;
    FDMemTableBidsapp_id: TWideStringField;
    FDMemTableBidsoffered_price: TWideStringField;
    FDMemTableBidsstart_date: TWideStringField;
    FDMemTableBidsoffer_description: TWideStringField;
    FDMemTableBidscreate_date: TWideStringField;
    FDMemTableBidsipaddr: TWideStringField;
    FDMemTableBidsuser: TWideStringField;
    FDMemTableBidsapproved_id: TWideStringField;
    FDMemTableBidsapproved_on_time: TWideStringField;
    FDMemTableBidsapproved_note: TWideStringField;
    FDMemTableBidsapproved: TWideStringField;
    FDMemTableBidsapproved_icon: TWideStringField;
    BindSourceDB1: TBindSourceDB;
    HeaderFrame1: THeaderFrame;
    PanelCancel: TPanel;
    FloatAnimation1: TFloatAnimation;
    Rectangle1: TRectangle;
    MemoCancelReason: TMemo;
    Label1: TLabel;
    RectangleHeder: TRectangle;
    Button1: TButton;
    Label2: TLabel;
    ButtonSubmit: TButton;
    ImageRequestSent: TImage;
    FloatAnimation2: TFloatAnimation;
    PanelChoose: TPanel;
    FloatAnimation3: TFloatAnimation;
    Rectangle3: TRectangle;
    MemoApproveComment: TMemo;
    Label3: TLabel;
    Rectangle4: TRectangle;
    Button2: TButton;
    Label4: TLabel;
    ButtonApprove: TButton;
    ImageRequestSent2: TImage;
    FloatAnimation4: TFloatAnimation;
    RESTRequestC: TRESTRequest;
    RESTResponseC: TRESTResponse;
    RESTRequestApproveRequest: TRESTRequest;
    RESTResponseApproveRequest: TRESTResponse;
    FDMemTableMyAppid: TWideStringField;
    FDMemTableMyAppuser_id: TWideStringField;
    FDMemTableMyAppdeadlineby_user: TWideStringField;
    FDMemTableMyAppexecute_days: TWideStringField;
    FDMemTableMyAppimageIndex: TWideStringField;
    FDMemTableMyAppusername: TWideStringField;
    FDMemTableMyAppnote: TWideStringField;
    FDMemTableMyAppstatus_name: TWideStringField;
    FDMemTableMyAppstatus_color: TWideStringField;
    FDMemTableMyAppstatus_progress: TWideStringField;
    FDMemTableMyAppapp_status_id: TWideStringField;
    FDMemTableMyAppnotification_on_email: TWideStringField;
    FDMemTableMyAppnotification_on_device: TWideStringField;
    FDMemTableMyAppcreate_date: TWideStringField;
    FDMemTableMyAppbidscount: TWideStringField;
    FDMemTableMyApplocation_name: TWideStringField;
    TabControl1: TTabControl;
    TabItemDetails: TTabItem;
    ListViewDetails: TListView;
    TabItemOffers: TTabItem;
    ListViewOffers: TListView;
    TabItemProperties: TTabItem;
    ListViewProperties: TListView;
    FDMemTableapp_property_requisites: TFDMemTable;
    FDMemTableapp_property_requisitesid: TWideStringField;
    FDMemTableapp_property_requisitesapp_id: TWideStringField;
    FDMemTableapp_property_requisitesapp_property_type_id: TWideStringField;
    FDMemTableapp_property_requisitesapp_property_type_name: TWideStringField;
    FDMemTableapp_property_requisiteslocation_id: TWideStringField;
    FDMemTableapp_property_requisiteslocation_address: TWideStringField;
    FDMemTableapp_property_requisitesaddress: TWideStringField;
    FDMemTableapp_property_requisitescadcode: TWideStringField;
    FDMemTableapp_property_requisitesarea: TWideStringField;
    FDMemTableapp_property_requisiteslon_lat: TWideStringField;
    FDMemTableapp_property_requisitesservice_types: TWideStringField;
    FDMemTableapp_property_requisitesapp_user_param: TWideStringField;
    RESTResponseDataSetAdapterRequiz: TRESTResponseDataSetAdapter;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    LinkListControlToField2: TLinkListControlToField;
    LinkListControlToField3: TLinkListControlToField;
    StyleBookAppDetails: TStyleBook;
    procedure ButtonBackClick(Sender: TObject);
    procedure RESTRequestBidsCountAfterExecute(Sender: TCustomRESTRequest);
    procedure ButtonBidsClick(Sender: TObject);
    procedure RESTRequestMyAppAfterExecute(Sender: TCustomRESTRequest);
    procedure FDMemTableMyAppAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonApproveClick(Sender: TObject);
    procedure ButtonSubmitClick(Sender: TObject);
    procedure HeaderFrame1ButtonBackClick(Sender: TObject);
    procedure RESTRequestApproveRequestAfterExecute(Sender: TCustomRESTRequest);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ListViewOffersPainting(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure ListViewOffersItemClick(const Sender: TObject; const AItem: TListViewItem);
  private
    { Private declarations }
  public
    { Public declarations }
    app_id: Integer;
    procedure initForm;
  end;

var
  MyAppDetailsForm: TMyAppDetailsForm;

implementation

{$R *.fmx}

uses DataModule, BidsByApp, Main;

procedure TMyAppDetailsForm.Button1Click(Sender: TObject);
begin
  PanelCancel.Visible := False;
end;

procedure TMyAppDetailsForm.Button2Click(Sender: TObject);
begin
  PanelChoose.Visible := False
end;

procedure TMyAppDetailsForm.ButtonApproveClick(Sender: TObject);
var
  aTask: ITask;
begin
  RectanglePreloader.Visible := True;
  aTask := TTask.Create(
    procedure()
    begin
      TThread.Synchronize(nil,
        procedure
        begin
          self.RESTRequestApproveRequest.Params.Clear;
          with RESTRequestApproveRequest.Params.AddItem do
          begin
            name := 'sesskey';
            Value := DModule.sesskey;
          end;
          with RESTRequestApproveRequest.Params.AddItem do
          begin
            name := 'user_id';
            Value := DModule.id.ToString;
          end;
          with RESTRequestApproveRequest.Params.AddItem do
          begin
            name := 'app_id';
            Value := self.app_id.ToString;
          end;
          with RESTRequestApproveRequest.Params.AddItem do
          begin
            name := 'app_offer_id';
            Value := self.FDMemTableBids.FieldByName('id').AsString;
          end;
          with RESTRequestApproveRequest.Params.AddItem do
          begin
            name := 'note';
            Value := TIdURI.ParamsEncode(MemoApproveComment.Text);
          end;
          self.RESTRequestApproveRequest.Execute;
        end);
    end);
  aTask.Start;
end;

procedure TMyAppDetailsForm.ButtonBackClick(Sender: TObject);
begin
  self.Close;
end;

procedure TMyAppDetailsForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure TMyAppDetailsForm.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  if Key = 137 then
    self.Free;
end;

procedure TMyAppDetailsForm.HeaderFrame1ButtonBackClick(Sender: TObject);
begin
  self.Close;
end;

procedure TMyAppDetailsForm.ButtonBidsClick(Sender: TObject);
begin
  { with TBidsByAppForm.Create(Application) do
    begin
    app_id := self.app_id;
    app_name := 'App ID: ' + self.app_id.ToString + ' / ' + FDMemTableMyApp.FieldByName('app_service_type_name').AsString;
    initForm;
    end; }
  TabControl1.ActiveTab := TabItemOffers;
end;

procedure TMyAppDetailsForm.ButtonSubmitClick(Sender: TObject);
var
  aTask: ITask;
begin
  RectanglePreloader.Visible := True;
  aTask := TTask.Create(
    procedure()
    begin
      TThread.Synchronize(nil,
        procedure
        begin
          self.RESTRequestC.Params.Clear;
          with RESTRequestC.Params.AddItem do
          begin
            name := 'sesskey';
            Value := DModule.sesskey;
          end;
          with RESTRequestC.Params.AddItem do
          begin
            name := 'user_id';
            Value := DModule.id.ToString;
          end;
          with RESTRequestC.Params.AddItem do
          begin
            name := 'app_id';
            Value := self.app_id.ToString;
          end;
          with RESTRequestC.Params.AddItem do
          begin
            name := 'app_offer_id';
            Value := self.FDMemTableBids.FieldByName('id').AsString;
          end;
          with RESTRequestC.Params.AddItem do
          begin
            name := 'reason_text';
            Value := TIdURI.ParamsEncode(MemoCancelReason.Text)
          end;
          self.RESTRequestC.Execute;
        end);
    end);
  aTask.Start;
end;

procedure TMyAppDetailsForm.FDMemTableMyAppAfterScroll(DataSet: TDataSet);
begin
  TabItemOffers.Text := '(' + DataSet.FieldByName('bidscount').AsString + ') შემოთავაზებები';
end;

procedure TMyAppDetailsForm.initForm;
var
  aTask: ITask;
begin
  self.Show;
  self.Label1.Text := 'App ID: ' + self.app_id.ToString;
  RectanglePreloader.Visible := True;
  aTask := TTask.Create(
    procedure()
    begin
      TThread.Synchronize(nil,
        procedure
        begin
          self.RESTRequestMyApp.Params.Clear;
          with RESTRequestMyApp.Params.AddItem do
          begin
            name := 'sesskey';
            Value := DModule.sesskey;
          end;
          with RESTRequestMyApp.Params.AddItem do
          begin
            name := 'user_id';
            Value := DModule.id.ToString;
          end;
          with RESTRequestMyApp.Params.AddItem do
          begin
            name := 'app_id';
            Value := self.app_id.ToString;
          end;
          self.RESTRequestMyApp.Execute;
        end);
    end);
  aTask.Start;
end;

procedure TMyAppDetailsForm.ListViewOffersItemClick(const Sender: TObject; const AItem: TListViewItem);
begin
  if FDMemTableBids.FieldByName('approved_id').AsInteger > 0 then
    PanelCancel.Visible := True
  else
    PanelChoose.Visible := True;
end;

procedure TMyAppDetailsForm.ListViewOffersPainting(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
begin
  Canvas.Flush;
end;

procedure TMyAppDetailsForm.RESTRequestApproveRequestAfterExecute(Sender: TCustomRESTRequest);
begin
  self.PanelChoose.Visible := False;
  ShowMessage(RESTResponseApproveRequest.Content);
end;

procedure TMyAppDetailsForm.RESTRequestBidsCountAfterExecute(Sender: TCustomRESTRequest);
begin
  RectanglePreloader.Visible := False;
end;

procedure TMyAppDetailsForm.RESTRequestMyAppAfterExecute(Sender: TCustomRESTRequest);
begin
  RectanglePreloader.Visible := False;
end;

end.
