.class public abstract Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;
.super Lorg/lasque/tusdk/impl/activity/TuResultFragment;


# instance fields
.field private a:Ljava/io/File;

.field private b:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

.field private c:Landroid/graphics/Bitmap;

.field private d:Z

.field private e:Z

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/View$OnClickListener;

.field protected mScreenSizeScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->mScreenSizeScale:F

    new-instance v0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$2;-><init>(Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;)V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->g:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected asyncLoadImage()Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected asyncLoadImageCompleted(Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    sget-object v0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->TypeInputImageEmpty:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->notifyError(Lorg/lasque/tusdk/core/TuSdkResult;Lorg/lasque/tusdk/modules/components/ComponentErrorType;)V

    const-string p1, "Can not find input image."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getCuterImage(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Bitmap;
    .locals 0

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1, p2, p3}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageCorp(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p1, p3}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageRotaing(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    cmpl-float p2, p4, p2

    if-lez p2, :cond_3

    invoke-static {p1, p4}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageCorp(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_3
    :goto_0
    return-object p1
.end method

.method public getCuterImage(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/TuSdkResult;)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p2, Lorg/lasque/tusdk/core/TuSdkResult;->cutRect:Landroid/graphics/RectF;

    iget-object p2, p2, Lorg/lasque/tusdk/core/TuSdkResult;->imageOrientation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->getCuterImage(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->getImageDisplaySize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->getTempFilePath()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->c:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->getImageSqlInfo()Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;ZLorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->c:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageDisplaySize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    iget v2, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->mScreenSizeScale:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v1, v1

    iget v2, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->mScreenSizeScale:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    :cond_0
    return-object v0
.end method

.method public getImageSqlInfo()Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->b:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    return-object v0
.end method

.method public getPreview()Landroid/widget/ImageView;
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->f:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->isShowResultPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->f:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->f:Landroid/widget/ImageView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->f:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->showViewIn(Landroid/view/View;Z)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTempFilePath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->a:Ljava/io/File;

    return-object v0
.end method

.method protected handleTest()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->getPreview()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->showViewIn(Landroid/view/View;Z)V

    return-void
.end method

.method public isAutoRemoveTemp()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->e:Z

    return v0
.end method

.method public isShowResultPreview()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->d:Z

    return v0
.end method

.method protected loadImageWithThread()V
    .locals 1

    const-string v0, "lsq_edit_loading"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->hubStatus(Ljava/lang/String;)V

    new-instance v0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1;-><init>(Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method

.method public loadOrginImage(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->getMaxTextureOptimizedSize()I

    move-result v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(I)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->limitSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->getTempFilePath()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->getImageSqlInfo()Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;ZLorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->isAutoRemoveTemp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->getTempFilePath()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->delete(Ljava/io/File;)V

    :cond_0
    invoke-super {p0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->onDestroyView()V

    return-void
.end method

.method protected postProcessWithImage(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->hubDismiss()V

    return-void
.end method

.method protected preProcessWithImage(Landroid/graphics/Bitmap;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public processingImage()V
    .locals 0

    return-void
.end method

.method public setAutoRemoveTemp(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->e:Z

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setImageSqlInfo(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->b:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    return-void
.end method

.method public setShowResultPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->d:Z

    return-void
.end method

.method public setTempFilePath(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->a:Ljava/io/File;

    return-void
.end method

.method protected showResultPreview(Lorg/lasque/tusdk/core/TuSdkResult;)Z
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->isShowResultPreview()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->getPreview()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->isSaveToAlbum()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    iput-object v2, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->isSaveToTemp()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageFile:Ljava/io/File;

    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->hubDismiss()V

    :goto_1
    const-string v2, "showResultPreview: %s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v4}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, v3}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->showViewIn(Landroid/view/View;Z)V

    return v3
.end method
