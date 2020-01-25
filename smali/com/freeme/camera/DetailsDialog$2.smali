.class final Lcom/freeme/camera/DetailsDialog$2;
.super Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$OnGetLocationStrByCooCompletedListener;
.source "DetailsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/DetailsDialog;->resolveAddress(Lcom/freeme/camera/GalleryActivity;[DLcom/freeme/camera/DetailsDialog$DetailsAdapter;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Lcom/freeme/camera/GalleryActivity;

.field final synthetic val$listener:Lcom/freeme/camera/DetailsDialog$DetailsAdapter;


# direct methods
.method constructor <init>(Ljava/lang/Thread;Lcom/freeme/camera/GalleryActivity;Lcom/freeme/camera/DetailsDialog$DetailsAdapter;)V
    .locals 0

    iput-object p2, p0, Lcom/freeme/camera/DetailsDialog$2;->val$context:Lcom/freeme/camera/GalleryActivity;

    iput-object p3, p0, Lcom/freeme/camera/DetailsDialog$2;->val$listener:Lcom/freeme/camera/DetailsDialog$DetailsAdapter;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$OnGetLocationStrByCooCompletedListener;-><init>(Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method public OnGetLocationStrByCooCompleted(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->splitJsonToAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/freeme/camera/DetailsDialog$2;->val$context:Lcom/freeme/camera/GalleryActivity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/freeme/camera/DetailsDialog;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/DetailsDialog$2;->val$listener:Lcom/freeme/camera/DetailsDialog$DetailsAdapter;

    invoke-static {v0}, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->access$200(Lcom/freeme/camera/DetailsDialog$DetailsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/DetailsDialog$2;->val$listener:Lcom/freeme/camera/DetailsDialog$DetailsAdapter;

    invoke-static {v1}, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->access$100(Lcom/freeme/camera/DetailsDialog$DetailsAdapter;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/freeme/camera/DetailsDialog$2;->val$listener:Lcom/freeme/camera/DetailsDialog$DetailsAdapter;

    invoke-virtual {p1}, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->notifyDataSetChanged()V

    return-void
.end method
