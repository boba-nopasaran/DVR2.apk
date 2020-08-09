.class Lcom/car/dvr/browser/DateSelectActivity$1;
.super Ljava/lang/Object;
.source "DateSelectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/browser/DateSelectActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/browser/DateSelectActivity;


# direct methods
.method constructor <init>(Lcom/car/dvr/browser/DateSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/DateSelectActivity$1;->this$0:Lcom/car/dvr/browser/DateSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
