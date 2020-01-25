.class Lcom/freeme/camera/ui/AnimationManager$AnimationTask;
.super Landroid/os/AsyncTask;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/AnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/freeme/camera/ui/AnimationManager$AsyncData;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mData:Lcom/freeme/camera/ui/AnimationManager$AsyncData;

.field final synthetic this$0:Lcom/freeme/camera/ui/AnimationManager;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/AnimationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/AnimationManager;Lcom/freeme/camera/ui/AnimationManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;-><init>(Lcom/freeme/camera/ui/AnimationManager;)V

    return-void
.end method

.method private changeBitmapSize(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, v3

    div-float/2addr p2, v0

    int-to-float v0, v4

    div-float/2addr p3, v0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p2, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/freeme/camera/ui/AnimationManager$AsyncData;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->mData:Lcom/freeme/camera/ui/AnimationManager$AsyncData;

    new-instance p1, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/AnimationManager;->access$200(Lcom/freeme/camera/ui/AnimationManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/AnimationManager;->access$200(Lcom/freeme/camera/ui/AnimationManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/CameraAppUI;->getmPreviewManager()Lcom/freeme/camera/ui/preview/PreviewManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/preview/PreviewManager;->getPreviewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v2}, Lcom/freeme/camera/ui/AnimationManager;->access$200(Lcom/freeme/camera/ui/AnimationManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->small(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->blurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/AnimationManager;->access$200(Lcom/freeme/camera/ui/AnimationManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f08013e

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->changeBitmapSize(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lcom/freeme/camera/ui/AnimationManager$AsyncData;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->doInBackground([Lcom/freeme/camera/ui/AnimationManager$AsyncData;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {}, Lcom/freeme/camera/ui/AnimationManager;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->mData:Lcom/freeme/camera/ui/AnimationManager$AsyncData;

    iget-object v2, v2, Lcom/freeme/camera/ui/AnimationManager$AsyncData;->mType:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/freeme/camera/ui/AnimationManager;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "The result bitmap is null!"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/freeme/camera/ui/AnimationManager$9;->$SwitchMap$com$freeme$camera$common$IAppUi$AnimationType:[I

    iget-object v1, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->mData:Lcom/freeme/camera/ui/AnimationManager$AsyncData;

    iget-object v1, v1, Lcom/freeme/camera/ui/AnimationManager$AsyncData;->mType:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-virtual {v1}, Lcom/freeme/camera/common/IAppUi$AnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/AnimationManager;->access$500(Lcom/freeme/camera/ui/AnimationManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/AnimationManager;->access$400(Lcom/freeme/camera/ui/AnimationManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/AnimationManager;->access$400(Lcom/freeme/camera/ui/AnimationManager;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/AnimationManager;->access$600(Lcom/freeme/camera/ui/AnimationManager;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/AnimationManager;->access$500(Lcom/freeme/camera/ui/AnimationManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/AnimationManager;->access$400(Lcom/freeme/camera/ui/AnimationManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/AnimationManager;->access$400(Lcom/freeme/camera/ui/AnimationManager;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/AnimationManager;->access$600(Lcom/freeme/camera/ui/AnimationManager;)V

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/ui/AnimationManager;->access$702(Lcom/freeme/camera/ui/AnimationManager;Lcom/freeme/camera/ui/AnimationManager$AnimationTask;)Lcom/freeme/camera/ui/AnimationManager$AnimationTask;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 7

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/AnimationManager;->access$200(Lcom/freeme/camera/ui/AnimationManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090167

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/preview/PreviewTextureView;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->getHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v2}, Lcom/freeme/camera/ui/AnimationManager;->access$200(Lcom/freeme/camera/ui/AnimationManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/AnimationManager;->access$200(Lcom/freeme/camera/ui/AnimationManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmFunnyFaceView()Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/AnimationManager;->access$200(Lcom/freeme/camera/ui/AnimationManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmFunnyFaceView()Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v2}, Lcom/freeme/camera/ui/AnimationManager;->access$200(Lcom/freeme/camera/ui/AnimationManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/AnimationManager;->access$200(Lcom/freeme/camera/ui/AnimationManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getHeight()I

    move-result v1

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/AnimationManager;->access$200(Lcom/freeme/camera/ui/AnimationManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getWidth()I

    move-result v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/freeme/camera/ui/AnimationManager;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreExecute width "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v2}, Lcom/freeme/camera/ui/AnimationManager;->access$400(Lcom/freeme/camera/ui/AnimationManager;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v0, v1}, Lcom/freeme/camera/common/utils/CameraUtil;->determineRatio(II)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v1}, Lcom/freeme/camera/ui/AnimationManager;->access$200(Lcom/freeme/camera/ui/AnimationManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/camera/common/utils/CameraUtil;->geScreenRatio(Lcom/freeme/camera/common/app/IApp;)I

    move-result v1

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v1, v4, :cond_4

    if-eq v0, v5, :cond_3

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_3

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/AnimationManager;->access$200(Lcom/freeme/camera/ui/AnimationManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070139

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :cond_4
    const/16 v6, 0x8

    if-ne v1, v6, :cond_7

    if-eq v0, v5, :cond_6

    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    if-ne v0, v4, :cond_9

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/AnimationManager;->access$200(Lcom/freeme/camera/ui/AnimationManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07013b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/AnimationManager;->access$200(Lcom/freeme/camera/ui/AnimationManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07013c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :cond_7
    if-ne v0, v5, :cond_8

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/AnimationManager;->access$200(Lcom/freeme/camera/ui/AnimationManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/AnimationManager;->access$200(Lcom/freeme/camera/ui/AnimationManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager$AnimationTask;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/AnimationManager;->access$400(Lcom/freeme/camera/ui/AnimationManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
