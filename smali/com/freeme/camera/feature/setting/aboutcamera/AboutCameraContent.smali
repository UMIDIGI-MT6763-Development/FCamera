.class public Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;
.super Landroid/app/Fragment;
.source "AboutCameraContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private appicon:I

.field private appname:Ljava/lang/String;

.field private freemeabout_app_icon_iv:Landroid/widget/ImageView;

.field private freemeabout_app_name_tv:Landroid/widget/TextView;

.field private freemeabout_versonname_tv:Landroid/widget/TextView;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private versionNameandCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0901e7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0901ee

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    const v0, 0x7f0b001d

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900db

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->freemeabout_app_icon_iv:Landroid/widget/ImageView;

    const p2, 0x7f0900dc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->freemeabout_app_name_tv:Landroid/widget/TextView;

    const p2, 0x7f0900e1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->freemeabout_versonname_tv:Landroid/widget/TextView;

    :try_start_0
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->icon:I

    iput p2, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->appicon:I

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->freemeabout_app_icon_iv:Landroid/widget/ImageView;

    iget p3, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->appicon:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->appname:Ljava/lang/String;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->freemeabout_app_name_tv:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->appname:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "V"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p3, p3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->versionNameandCode:Ljava/lang/String;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->freemeabout_versonname_tv:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;->versionNameandCode:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    new-instance p2, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent$1;

    invoke-direct {p2, p0}, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent$1;-><init>(Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p1
.end method
