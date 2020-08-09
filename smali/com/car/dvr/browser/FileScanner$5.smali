.class Lcom/car/dvr/browser/FileScanner$5;
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

    iput-object p1, p0, Lcom/car/dvr/browser/FileScanner$5;->this$0:Lcom/car/dvr/browser/FileScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/car/dvr/browser/FileInfo;Lcom/car/dvr/browser/FileInfo;)I
    .locals 4

    iget-wide v0, p1, Lcom/car/dvr/browser/FileInfo;->modifytime:J

    iget-wide v2, p2, Lcom/car/dvr/browser/FileInfo;->modifytime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/car/dvr/browser/FileInfo;->modifytime:J

    iget-wide v2, p2, Lcom/car/dvr/browser/FileInfo;->modifytime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/car/dvr/browser/FileInfo;

    check-cast p2, Lcom/car/dvr/browser/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/car/dvr/browser/FileScanner$5;->compare(Lcom/car/dvr/browser/FileInfo;Lcom/car/dvr/browser/FileInfo;)I

    move-result v0

    return v0
.end method
