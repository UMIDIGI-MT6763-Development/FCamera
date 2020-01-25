.class Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask$1;
.super Ljava/lang/Object;
.source "CameraDataAdapter.java"

# interfaces
.implements Lcom/freeme/camera/filmstrip/DataAdapter$UpdateReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;->onPostExecute(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;

.field final synthetic val$updatedData:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask$1;->this$1:Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;

    iput-object p2, p0, Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask$1;->val$updatedData:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataRemoved(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isDataUpdated(I)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask$1;->val$updatedData:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
