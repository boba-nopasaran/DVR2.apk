.class public abstract Lcom/calmcar/b/b/a$a;
.super Lcom/calmcar/b/b/a;
.source "CallBackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/calmcar/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/calmcar/b/b/a",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/calmcar/b/b/a;-><init>()V

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/calmcar/b/b/a;-><init>()V

    iput p1, p0, Lcom/calmcar/b/b/a$a;->b:I

    iput p2, p0, Lcom/calmcar/b/b/a$a;->c:I

    return-void
.end method

.method private constructor <init>(Landroid/widget/ImageView;)V
    .locals 2

    invoke-direct {p0}, Lcom/calmcar/b/b/a;-><init>()V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    if-lez v0, :cond_0

    if-gtz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u65e0\u6cd5\u83b7\u53d6ImageView\u7684width\u6216height"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput v0, p0, Lcom/calmcar/b/b/a$a;->b:I

    iput v1, p0, Lcom/calmcar/b/b/a$a;->c:I

    return-void
.end method

.method private b(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x64

    new-array v3, v3, [B

    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-virtual {p1, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v3, v0

    invoke-static {v0, v8, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    iget v5, p0, Lcom/calmcar/b/b/a$a;->b:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    int-to-float v4, v4

    iget v5, p0, Lcom/calmcar/b/b/a$a;->c:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-gt v3, v1, :cond_0

    if-le v4, v1, :cond_1

    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v1, v0

    invoke-static {v0, v8, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to decode stream."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private d(Lcom/calmcar/b/b/d;)Landroid/graphics/Bitmap;
    .locals 1

    iget v0, p0, Lcom/calmcar/b/b/a$a;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/calmcar/b/b/a$a;->c:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/calmcar/b/b/d;->a:Ljava/io/InputStream;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/calmcar/b/b/d;->a:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/calmcar/b/b/a$a;->b(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic c(Lcom/calmcar/b/b/d;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/calmcar/b/b/a$a;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/calmcar/b/b/a$a;->c:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/calmcar/b/b/d;->a:Ljava/io/InputStream;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/calmcar/b/b/d;->a:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/calmcar/b/b/a$a;->b(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
