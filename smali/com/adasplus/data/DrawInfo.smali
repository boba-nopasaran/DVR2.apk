.class public Lcom/adasplus/data/DrawInfo;
.super Ljava/lang/Object;
.source "DrawInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adasplus/data/DrawInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private config:Lcom/adasplus/data/AdasConfig;

.field private fcwResults:Lcom/adasplus/data/FcwInfo;

.field private ldwResults:Lcom/adasplus/data/LdwInfo;

.field private speed:F

.field private stgBeep:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/adasplus/data/DrawInfo$1;

    invoke-direct {v0}, Lcom/adasplus/data/DrawInfo$1;-><init>()V

    sput-object v0, Lcom/adasplus/data/DrawInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/adasplus/data/LdwInfo;

    iput-object v0, p0, Lcom/adasplus/data/DrawInfo;->ldwResults:Lcom/adasplus/data/LdwInfo;

    const-class v0, Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/adasplus/data/FcwInfo;

    iput-object v0, p0, Lcom/adasplus/data/DrawInfo;->fcwResults:Lcom/adasplus/data/FcwInfo;

    const-class v0, Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/adasplus/data/AdasConfig;

    iput-object v0, p0, Lcom/adasplus/data/DrawInfo;->config:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/adasplus/data/DrawInfo;->speed:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/DrawInfo;->stgBeep:I

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adasplus/data/DrawInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/adasplus/data/DrawInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConfig()Lcom/adasplus/data/AdasConfig;
    .locals 1

    iget-object v0, p0, Lcom/adasplus/data/DrawInfo;->config:Lcom/adasplus/data/AdasConfig;

    return-object v0
.end method

.method public getFcwResults()Lcom/adasplus/data/FcwInfo;
    .locals 1

    iget-object v0, p0, Lcom/adasplus/data/DrawInfo;->fcwResults:Lcom/adasplus/data/FcwInfo;

    return-object v0
.end method

.method public getLdwResults()Lcom/adasplus/data/LdwInfo;
    .locals 1

    iget-object v0, p0, Lcom/adasplus/data/DrawInfo;->ldwResults:Lcom/adasplus/data/LdwInfo;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lcom/adasplus/data/DrawInfo;->speed:F

    return v0
.end method

.method public getStgBeep()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/DrawInfo;->stgBeep:I

    return v0
.end method

.method public setConfig(Lcom/adasplus/data/AdasConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/adasplus/data/DrawInfo;->config:Lcom/adasplus/data/AdasConfig;

    return-void
.end method

.method public setFcwResults(Lcom/adasplus/data/FcwInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/adasplus/data/DrawInfo;->fcwResults:Lcom/adasplus/data/FcwInfo;

    return-void
.end method

.method public setLdwResults(Lcom/adasplus/data/LdwInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/adasplus/data/DrawInfo;->ldwResults:Lcom/adasplus/data/LdwInfo;

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/DrawInfo;->speed:F

    return-void
.end method

.method public setStgBeep(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/DrawInfo;->stgBeep:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawInfo{ldwResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adasplus/data/DrawInfo;->ldwResults:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fcwResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adasplus/data/DrawInfo;->fcwResults:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adasplus/data/DrawInfo;->config:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/DrawInfo;->speed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stgBeep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/DrawInfo;->stgBeep:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/adasplus/data/DrawInfo;->ldwResults:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/adasplus/data/DrawInfo;->fcwResults:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/adasplus/data/DrawInfo;->config:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/adasplus/data/DrawInfo;->speed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/adasplus/data/DrawInfo;->stgBeep:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
