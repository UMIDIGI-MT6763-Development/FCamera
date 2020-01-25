.class Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;
.super Landroid/os/AsyncTask;
.source "CameraDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/CameraDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetadataUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/CameraDataAdapter;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/CameraDataAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/CameraDataAdapter;Lcom/freeme/camera/CameraDataAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;-><init>(Lcom/freeme/camera/CameraDataAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;->doInBackground([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    invoke-static {v5}, Lcom/freeme/camera/CameraDataAdapter;->access$600(Lcom/freeme/camera/CameraDataAdapter;)Lcom/freeme/camera/data/LocalDataList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/freeme/camera/data/LocalDataList;->size()I

    move-result v5

    if-lt v4, v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    invoke-static {v4}, Lcom/freeme/camera/CameraDataAdapter;->access$600(Lcom/freeme/camera/CameraDataAdapter;)Lcom/freeme/camera/data/LocalDataList;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/freeme/camera/data/LocalDataList;->get(I)Lcom/freeme/camera/data/LocalData;

    move-result-object v4

    iget-object v5, p0, Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    invoke-static {v5}, Lcom/freeme/camera/CameraDataAdapter;->access$400(Lcom/freeme/camera/CameraDataAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/freeme/camera/data/MetadataLoader;->loadMetadata(Landroid/content/Context;Lcom/freeme/camera/data/LocalData;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    invoke-static {v0}, Lcom/freeme/camera/CameraDataAdapter;->access$700(Lcom/freeme/camera/CameraDataAdapter;)Lcom/freeme/camera/filmstrip/DataAdapter$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    invoke-static {v0}, Lcom/freeme/camera/CameraDataAdapter;->access$700(Lcom/freeme/camera/CameraDataAdapter;)Lcom/freeme/camera/filmstrip/DataAdapter$Listener;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask$1;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask$1;-><init>(Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/freeme/camera/filmstrip/DataAdapter$Listener;->onDataUpdated(Lcom/freeme/camera/filmstrip/DataAdapter$UpdateReporter;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    invoke-static {v0}, Lcom/freeme/camera/CameraDataAdapter;->access$500(Lcom/freeme/camera/CameraDataAdapter;)Lcom/freeme/camera/data/LocalDataAdapter$LocalDataListener;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    invoke-static {v0}, Lcom/freeme/camera/CameraDataAdapter;->access$500(Lcom/freeme/camera/CameraDataAdapter;)Lcom/freeme/camera/data/LocalDataAdapter$LocalDataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/data/LocalDataAdapter$LocalDataListener;->onMetadataUpdated(Ljava/util/List;)V

    return-void
.end method
