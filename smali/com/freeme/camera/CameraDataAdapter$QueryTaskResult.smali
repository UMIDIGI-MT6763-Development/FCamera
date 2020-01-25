.class Lcom/freeme/camera/CameraDataAdapter$QueryTaskResult;
.super Ljava/lang/Object;
.source "CameraDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/CameraDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryTaskResult"
.end annotation


# instance fields
.field public mLastPhotoId:J

.field public mLocalDataList:Lcom/freeme/camera/data/LocalDataList;

.field final synthetic this$0:Lcom/freeme/camera/CameraDataAdapter;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/CameraDataAdapter;Lcom/freeme/camera/data/LocalDataList;J)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/CameraDataAdapter$QueryTaskResult;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/CameraDataAdapter$QueryTaskResult;->mLocalDataList:Lcom/freeme/camera/data/LocalDataList;

    iput-wide p3, p0, Lcom/freeme/camera/CameraDataAdapter$QueryTaskResult;->mLastPhotoId:J

    return-void
.end method
