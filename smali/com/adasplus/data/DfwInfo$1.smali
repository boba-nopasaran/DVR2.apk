.class final Lcom/adasplus/data/DfwInfo$1;
.super Ljava/lang/Object;
.source "DfwInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adasplus/data/DfwInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/adasplus/data/DfwInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/adasplus/data/DfwInfo;
    .locals 1

    new-instance v0, Lcom/adasplus/data/DfwInfo;

    invoke-direct {v0, p1}, Lcom/adasplus/data/DfwInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/adasplus/data/DfwInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/adasplus/data/DfwInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/adasplus/data/DfwInfo;
    .locals 1

    new-array v0, p1, [Lcom/adasplus/data/DfwInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/adasplus/data/DfwInfo$1;->newArray(I)[Lcom/adasplus/data/DfwInfo;

    move-result-object v0

    return-object v0
.end method
