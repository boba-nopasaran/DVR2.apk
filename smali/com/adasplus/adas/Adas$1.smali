.class Lcom/adasplus/adas/Adas$1;
.super Ljava/lang/Object;
.source "Adas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adasplus/adas/Adas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adasplus/adas/Adas;


# direct methods
.method constructor <init>(Lcom/adasplus/adas/Adas;)V
    .locals 0

    iput-object p1, p0, Lcom/adasplus/adas/Adas$1;->this$0:Lcom/adasplus/adas/Adas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/adasplus/adas/Adas$1;->this$0:Lcom/adasplus/adas/Adas;

    iget-object v4, p0, Lcom/adasplus/adas/Adas$1;->this$0:Lcom/adasplus/adas/Adas;

    invoke-static {v4}, Lcom/adasplus/adas/Adas;->access$100(Lcom/adasplus/adas/Adas;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "AdasConfig"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adasplus/adas/Adas;->access$002(Lcom/adasplus/adas/Adas;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/adasplus/adas/Adas$1;->this$0:Lcom/adasplus/adas/Adas;

    invoke-static {v3}, Lcom/adasplus/adas/Adas;->access$000(Lcom/adasplus/adas/Adas;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "FirstInit"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/adasplus/adas/Adas$1;->this$0:Lcom/adasplus/adas/Adas;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/adasplus/adas/Adas$1;->this$0:Lcom/adasplus/adas/Adas;

    invoke-static {v5}, Lcom/adasplus/adas/Adas;->access$100(Lcom/adasplus/adas/Adas;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "adas"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adasplus/adas/Adas;->access$202(Lcom/adasplus/adas/Adas;Ljava/lang/String;)Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/adasplus/adas/Adas$1;->this$0:Lcom/adasplus/adas/Adas;

    invoke-static {v3}, Lcom/adasplus/adas/Adas;->access$300(Lcom/adasplus/adas/Adas;)V

    iget-object v3, p0, Lcom/adasplus/adas/Adas$1;->this$0:Lcom/adasplus/adas/Adas;

    const-string v4, "load0"

    invoke-static {v3, v4}, Lcom/adasplus/adas/Adas;->access$400(Lcom/adasplus/adas/Adas;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/adasplus/adas/Adas$1;->this$0:Lcom/adasplus/adas/Adas;

    invoke-static {v3}, Lcom/adasplus/adas/Adas;->access$000(Lcom/adasplus/adas/Adas;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "version"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "adas_11.0.5_003.zip"

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/adasplus/adas/Adas$1;->this$0:Lcom/adasplus/adas/Adas;

    const-string v4, "load0"

    invoke-static {v3, v4}, Lcom/adasplus/adas/Adas;->access$400(Lcom/adasplus/adas/Adas;Ljava/lang/String;)V

    :cond_1
    const-string v3, "pufangda"

    const-string v4, "hebu"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/adasplus/adas/Adas$1;->this$0:Lcom/adasplus/adas/Adas;

    invoke-static {v3}, Lcom/adasplus/adas/Adas;->access$500(Lcom/adasplus/adas/Adas;)V

    :cond_2
    iget-object v3, p0, Lcom/adasplus/adas/Adas$1;->this$0:Lcom/adasplus/adas/Adas;

    invoke-static {v3}, Lcom/adasplus/adas/Adas;->access$600(Lcom/adasplus/adas/Adas;)V

    iget-object v3, p0, Lcom/adasplus/adas/Adas$1;->this$0:Lcom/adasplus/adas/Adas;

    invoke-static {v3}, Lcom/adasplus/adas/Adas;->access$100(Lcom/adasplus/adas/Adas;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/adasplus/adas/util/Util;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/adasplus/adas/Adas$1;->this$0:Lcom/adasplus/adas/Adas;

    invoke-static {v3}, Lcom/adasplus/adas/Adas;->access$100(Lcom/adasplus/adas/Adas;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/adasplus/adas/Adas$1;->this$0:Lcom/adasplus/adas/Adas;

    invoke-static {v5}, Lcom/adasplus/adas/Adas;->access$100(Lcom/adasplus/adas/Adas;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/adasplus/adas/adas/AdasService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    return-void
.end method
