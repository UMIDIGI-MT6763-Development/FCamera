.class Lcom/freeme/camera/CameraDataAdapter$DeletionTask;
.super Landroid/os/AsyncTask;
.source "CameraDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/CameraDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeletionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/freeme/camera/data/LocalData;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/CameraDataAdapter;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/CameraDataAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/CameraDataAdapter$DeletionTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/CameraDataAdapter;Lcom/freeme/camera/CameraDataAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/CameraDataAdapter$DeletionTask;-><init>(Lcom/freeme/camera/CameraDataAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lcom/freeme/camera/data/LocalData;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/CameraDataAdapter$DeletionTask;->doInBackground([Lcom/freeme/camera/data/LocalData;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/freeme/camera/data/LocalData;)Ljava/lang/Void;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/freeme/camera/data/LocalData;->isDataActionSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/freeme/camera/CameraDataAdapter$DeletionTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    invoke-static {v2}, Lcom/freeme/camera/CameraDataAdapter;->access$400(Lcom/freeme/camera/CameraDataAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/freeme/camera/data/LocalData;->delete(Landroid/content/Context;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/CameraDataAdapter$DeletionTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/freeme/camera/CameraDataAdapter$DeletionTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    invoke-static {p1}, Lcom/freeme/camera/CameraDataAdapter;->access$500(Lcom/freeme/camera/CameraDataAdapter;)Lcom/freeme/camera/data/LocalDataAdapter$LocalDataListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/CameraDataAdapter$DeletionTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    invoke-static {p1}, Lcom/freeme/camera/CameraDataAdapter;->access$500(Lcom/freeme/camera/CameraDataAdapter;)Lcom/freeme/camera/data/LocalDataAdapter$LocalDataListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalDataAdapter$LocalDataListener;->notifyDeleteCompleted()V

    :cond_0
    return-void
.end method
