.class public final Lcom/calmcar/b/b/b;
.super Ljava/lang/Object;
.source "NetConf.java"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = "http://cloud.calmcar.com:5004/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://cloud.calmcar.com:5004/dms/push/info/"

    sput-object v0, Lcom/calmcar/b/b/b;->a:Ljava/lang/String;

    const-string v0, "http://cloud.calmcar.com:5004/dms/push/event/"

    sput-object v0, Lcom/calmcar/b/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
