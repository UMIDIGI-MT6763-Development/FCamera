.class Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;
.super Ljava/lang/Object;
.source "SdofPictureSizeSettingView.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PictureSizeSelectorPreferenceClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;-><init>(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->access$300(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->access$400(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->access$502(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->access$100(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->popBackStack()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->access$200(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->access$500(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/PictureSizeSelectorPreference;->setSelectedValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->access$600(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$Listener;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->access$500(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$Listener;->onSizeChanged(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->access$700(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object p1

    const-string v0, "key_stereo_picture_size"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->access$500(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->access$700(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "On picture size selected, new size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView$PictureSizeSelectorPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;->access$500(Lcom/freeme/camera/feature/mode/vsdof/photo/view/SdofPictureSizeSettingView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v3
.end method
