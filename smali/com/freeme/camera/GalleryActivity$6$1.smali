.class Lcom/freeme/camera/GalleryActivity$6$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/GalleryActivity$6;->onDataFocusChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/GalleryActivity$6;

.field final synthetic val$newDataId:I


# direct methods
.method constructor <init>(Lcom/freeme/camera/GalleryActivity$6;I)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity$6$1;->this$1:Lcom/freeme/camera/GalleryActivity$6;

    iput p2, p0, Lcom/freeme/camera/GalleryActivity$6$1;->val$newDataId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$6$1;->this$1:Lcom/freeme/camera/GalleryActivity$6;

    iget-object v0, v0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    iget v1, p0, Lcom/freeme/camera/GalleryActivity$6$1;->val$newDataId:I

    invoke-static {v0, v1}, Lcom/freeme/camera/GalleryActivity;->access$1200(Lcom/freeme/camera/GalleryActivity;I)V

    return-void
.end method
