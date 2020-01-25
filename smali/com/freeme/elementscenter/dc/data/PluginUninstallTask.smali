.class public Lcom/freeme/elementscenter/dc/data/PluginUninstallTask;
.super Landroid/os/AsyncTask;
.source "PluginUninstallTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mPluginItem:Lcom/freeme/elementscenter/dc/data/PluginItem;


# direct methods
.method public constructor <init>(Lcom/freeme/elementscenter/dc/data/PluginItem;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/data/PluginUninstallTask;->mPluginItem:Lcom/freeme/elementscenter/dc/data/PluginItem;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/data/PluginUninstallTask;->mPluginItem:Lcom/freeme/elementscenter/dc/data/PluginItem;

    iget-object p1, p1, Lcom/freeme/elementscenter/dc/data/PluginItem;->pkgName:Ljava/lang/String;

    invoke-static {p1}, Lcom/freeme/elementscenter/data/ECUtil;->backgroundUninstallAPK(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/data/PluginUninstallTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getPluginItem()Lcom/freeme/elementscenter/dc/data/PluginItem;
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/data/PluginUninstallTask;->mPluginItem:Lcom/freeme/elementscenter/dc/data/PluginItem;

    return-object v0
.end method
