.class Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$1;
.super Ljava/lang/Object;
.source "SdofPictureSizeSettingView.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->initPictureSizePreference(Landroid/preference/PreferenceFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->access$100(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->access$200(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;

    move-result-object v0

    const-string v1, "sdof_picture_size_selector"

    const v2, 0x7f0901aa

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    const/4 p1, 0x1

    return p1
.end method
