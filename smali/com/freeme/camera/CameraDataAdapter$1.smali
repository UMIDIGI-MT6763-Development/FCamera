.class Lcom/freeme/camera/CameraDataAdapter$1;
.super Ljava/lang/Object;
.source "CameraDataAdapter.java"

# interfaces
.implements Lcom/freeme/camera/filmstrip/DataAdapter$UpdateReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/CameraDataAdapter;->updateData(ILcom/freeme/camera/data/LocalData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/CameraDataAdapter;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/freeme/camera/CameraDataAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/CameraDataAdapter$1;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    iput p2, p0, Lcom/freeme/camera/CameraDataAdapter$1;->val$pos:I

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

    iget v0, p0, Lcom/freeme/camera/CameraDataAdapter$1;->val$pos:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
