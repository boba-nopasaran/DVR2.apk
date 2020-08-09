.class public Lcom/adasplus/data/LdwInfo;
.super Ljava/lang/Object;
.source "LdwInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adasplus/data/LdwInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private left:Lcom/adasplus/data/LaneInfo;

.field private right:Lcom/adasplus/data/LaneInfo;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/adasplus/data/LdwInfo$1;

    invoke-direct {v0}, Lcom/adasplus/data/LdwInfo$1;-><init>()V

    sput-object v0, Lcom/adasplus/data/LdwInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/LdwInfo;->state:I

    const-class v0, Lcom/adasplus/data/LaneInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/adasplus/data/LaneInfo;

    iput-object v0, p0, Lcom/adasplus/data/LdwInfo;->left:Lcom/adasplus/data/LaneInfo;

    const-class v0, Lcom/adasplus/data/LaneInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/adasplus/data/LaneInfo;

    iput-object v0, p0, Lcom/adasplus/data/LdwInfo;->right:Lcom/adasplus/data/LaneInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLeft()Lcom/adasplus/data/LaneInfo;
    .locals 1

    iget-object v0, p0, Lcom/adasplus/data/LdwInfo;->left:Lcom/adasplus/data/LaneInfo;

    return-object v0
.end method

.method public getRight()Lcom/adasplus/data/LaneInfo;
    .locals 1

    iget-object v0, p0, Lcom/adasplus/data/LdwInfo;->right:Lcom/adasplus/data/LaneInfo;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/LdwInfo;->state:I

    return v0
.end method

.method public setLeft(Lcom/adasplus/data/LaneInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/adasplus/data/LdwInfo;->left:Lcom/adasplus/data/LaneInfo;

    return-void
.end method

.method public setRight(Lcom/adasplus/data/LaneInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/adasplus/data/LdwInfo;->right:Lcom/adasplus/data/LaneInfo;

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/LdwInfo;->state:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LdwInfo{state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/LdwInfo;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adasplus/data/LdwInfo;->left:Lcom/adasplus/data/LaneInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adasplus/data/LdwInfo;->right:Lcom/adasplus/data/LaneInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    iget v0, p0, Lcom/adasplus/data/LdwInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/adasplus/data/LdwInfo;->left:Lcom/adasplus/data/LaneInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/adasplus/data/LdwInfo;->right:Lcom/adasplus/data/LaneInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
