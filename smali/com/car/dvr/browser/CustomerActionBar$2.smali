.class Lcom/car/dvr/browser/CustomerActionBar$2;
.super Ljava/lang/Object;
.source "CustomerActionBar.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/browser/CustomerActionBar;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/browser/CustomerActionBar;


# direct methods
.method constructor <init>(Lcom/car/dvr/browser/CustomerActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/CustomerActionBar$2;->this$0:Lcom/car/dvr/browser/CustomerActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/CustomerActionBar$2;->this$0:Lcom/car/dvr/browser/CustomerActionBar;

    invoke-static {v0}, Lcom/car/dvr/browser/CustomerActionBar;->access$000(Lcom/car/dvr/browser/CustomerActionBar;)Lcom/car/dvr/browser/FileBrowser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/car/dvr/browser/FileBrowser;->setCameraRange(Ljava/lang/String;)V

    return-void
.end method
