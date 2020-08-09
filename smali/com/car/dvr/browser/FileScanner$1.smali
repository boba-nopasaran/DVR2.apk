.class Lcom/car/dvr/browser/FileScanner$1;
.super Ljava/lang/Object;
.source "FileScanner.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/browser/FileScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/car/dvr/browser/FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/browser/FileScanner;


# direct methods
.method constructor <init>(Lcom/car/dvr/browser/FileScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileScanner$1;->this$0:Lcom/car/dvr/browser/FileScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/car/dvr/browser/FileInfo;Lcom/car/dvr/browser/FileInfo;)I
    .locals 2

    iget-object v0, p1, Lcom/car/dvr/browser/FileInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/car/dvr/browser/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/car/dvr/browser/FileInfo;

    check-cast p2, Lcom/car/dvr/browser/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/car/dvr/browser/FileScanner$1;->compare(Lcom/car/dvr/browser/FileInfo;Lcom/car/dvr/browser/FileInfo;)I

    move-result v0

    return v0
.end method
