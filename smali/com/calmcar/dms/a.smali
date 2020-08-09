.class public final Lcom/calmcar/dms/a;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://cloud.calmcar.com:5002/orderform/dms/newactive"

    sput-object v0, Lcom/calmcar/dms/a;->a:Ljava/lang/String;

    const-string v0, "/calmcar/dms/conf/"

    sput-object v0, Lcom/calmcar/dms/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
