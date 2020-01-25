.class public Lcom/freeme/camera/feature/mode/iko/IKOActivity;
.super Landroid/app/Activity;
.source "IKOActivity.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/iko/ResponseListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$OnSlideFinishListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/iko/IKOActivity$IKORunnable;
    }
.end annotation


# static fields
.field private static final IKO_IMAGE_SEARCH_URL:Ljava/lang/String; = "com.ume.browser"

.field private static final INFO_FLOW_ADDRESS_URL:Ljava/lang/String; = "https://mini.eastday.com/channels/index.html?type=toutiao&qid=qid11113"


# instance fields
.field private mCurrentStatus:Ljava/lang/String;

.field private mData:[B

.field private mDragLayoutFail:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;

.field private mDragLayoutSuccess:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;

.field private mErrorText:Landroid/widget/TextView;

.field private mErrorTextRetry:Landroid/widget/TextView;

.field private mIkoCancel:Landroid/widget/TextView;

.field private mIkoName:Landroid/widget/TextView;

.field private mIkoResultBean:Lcom/freeme/camera/feature/mode/iko/IKOResultBean;

.field private mImageIko:Landroid/widget/ImageView;

.field private mImageOriginal:Landroid/widget/ImageView;

.field private mImageUrl:Ljava/lang/String;

.field private mIsRecognizeSuccess:Z

.field private mTextIko:Landroid/widget/TextView;

.field private mWebViewFail:Landroid/webkit/WebView;

.field private mWebViewSuccess:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mData:[B

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)[B
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mData:[B

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->handleViewDisplay()V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mDragLayoutSuccess:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mDragLayoutFail:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mErrorText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mErrorTextRetry:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewFail:Landroid/webkit/WebView;

    return-object p0
.end method

.method private handleViewDisplay()V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mDragLayoutSuccess:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mDragLayoutFail:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mIkoResultBean:Lcom/freeme/camera/feature/mode/iko/IKOResultBean;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/iko/IKOResultBean;->getResultBean()Lcom/freeme/camera/feature/mode/iko/IKOBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/iko/IKOBean;->getResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;->getBaike_info()Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;->getImage_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/DrawableTypeRequest;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mImageIko:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :cond_0
    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;->getBaike_info()Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;->getImage_url()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mImageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mImageOriginal:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mData:[B

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mTextIko:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;->getBaike_info()Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mTextIko:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;->getBaike_info()Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;->getBaike_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mIkoName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewSuccess:Landroid/webkit/WebView;

    const-string v1, "https://mini.eastday.com/channels/index.html?type=toutiao&qid=qid11113"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f0900af

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mErrorText:Landroid/widget/TextView;

    const v0, 0x7f0900b0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mErrorTextRetry:Landroid/widget/TextView;

    const v0, 0x7f090100

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mImageOriginal:Landroid/widget/ImageView;

    const v0, 0x7f0900fa

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mIkoName:Landroid/widget/TextView;

    const v0, 0x7f0900ff

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mImageIko:Landroid/widget/ImageView;

    const v0, 0x7f0901d8

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mTextIko:Landroid/widget/TextView;

    const v0, 0x7f0900f8

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mIkoCancel:Landroid/widget/TextView;

    const v0, 0x7f0901fe

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewSuccess:Landroid/webkit/WebView;

    const v0, 0x7f0901fd

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewFail:Landroid/webkit/WebView;

    const v0, 0x7f090095

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mDragLayoutSuccess:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;

    const v0, 0x7f090094

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mDragLayoutFail:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;

    return-void
.end method

.method private startSearch(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "com.ume.browser"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v1, "IKO_USE_SPECIFIED_BROWSER_PKG"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v1, "IKO_USE_SPECIFIED_BROWSER_PKG"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f00ca

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public initSystemBar(Ljava/lang/Boolean;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const v2, 0x7f060046

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :goto_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    or-int/lit16 p1, v1, 0x2000

    goto :goto_1

    :cond_1
    and-int/lit16 p1, v1, -0x2001

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->finish()V

    const v0, 0x7f01000e

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900b0

    if-eq v0, v1, :cond_2

    const v1, 0x7f0900f8

    if-eq v0, v1, :cond_2

    const v1, 0x7f0900ff

    if-eq v0, v1, :cond_1

    const v1, 0x7f0901d8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->startSearch(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mImageUrl:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->startSearch(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->finish()V

    const p1, 0x7f01000e

    const v0, 0x7f01001e

    invoke-virtual {p0, p1, v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->overridePendingTransition(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->initSystemBar(Ljava/lang/Boolean;)V

    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->initView()V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mData:[B

    :cond_0
    invoke-static {}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->getInstance()Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->setResponseListener(Lcom/freeme/camera/feature/mode/iko/ResponseListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mImageIko:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mTextIko:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mErrorTextRetry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mErrorTextRetry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mIkoCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mDragLayoutSuccess:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->setOnSlideDetailsListener(Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$OnSlideFinishListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mDragLayoutFail:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->setOnSlideDetailsListener(Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$OnSlideFinishListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/freeme/camera/feature/mode/iko/IKOActivity$IKORunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/freeme/camera/feature/mode/iko/IKOActivity$IKORunnable;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOActivity;Lcom/freeme/camera/feature/mode/iko/IKOActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewSuccess:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewSuccess:Landroid/webkit/WebView;

    new-instance v1, Lcom/freeme/camera/feature/mode/iko/MyWebViewClient;

    invoke-direct {v1}, Lcom/freeme/camera/feature/mode/iko/MyWebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewSuccess:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewFail:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewFail:Landroid/webkit/WebView;

    new-instance v0, Lcom/freeme/camera/feature/mode/iko/MyWebViewClient;

    invoke-direct {v0}, Lcom/freeme/camera/feature/mode/iko/MyWebViewClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewFail:Landroid/webkit/WebView;

    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewSuccess:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewSuccess:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewFail:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewFail:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mIsRecognizeSuccess:Z

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->DOWNSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mCurrentStatus:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewSuccess:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewSuccess:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    return v1

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->DOWNSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mCurrentStatus:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewFail:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewFail:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLoadFailure()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mIsRecognizeSuccess:Z

    new-instance v0, Lcom/freeme/camera/feature/mode/iko/IKOActivity$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity$3;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)V

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLoadStart()V
    .locals 1

    new-instance v0, Lcom/freeme/camera/feature/mode/iko/IKOActivity$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity$1;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)V

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLoadSuccess(Lcom/freeme/camera/feature/mode/iko/IKOResultBean;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mIsRecognizeSuccess:Z

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mIkoResultBean:Lcom/freeme/camera/feature/mode/iko/IKOResultBean;

    new-instance p1, Lcom/freeme/camera/feature/mode/iko/IKOActivity$2;

    invoke-direct {p1, p0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity$2;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewSuccess:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewFail:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_1
    invoke-static {}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->getInstance()Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->stopLoading()V

    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewSuccess:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mWebViewFail:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_1
    return-void
.end method

.method public onStatueChanged(Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;)V
    .locals 0

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->mCurrentStatus:Ljava/lang/String;

    return-void
.end method
