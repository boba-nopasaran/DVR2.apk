.class public Lcom/amap/api/services/a/bz;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DB.java"


# static fields
.field private static b:Z

.field private static c:Z


# instance fields
.field private a:Lcom/amap/api/services/a/bt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/services/a/bz;->b:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/services/a/bz;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/amap/api/services/a/bt;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p5, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/bt;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/bt;

    invoke-interface {v0, p1}, Lcom/amap/api/services/a/bt;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/bt;

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/services/a/bt;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
