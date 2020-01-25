.class Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$MyOnPreferenceClickListener;
.super Ljava/lang/Object;
.source "VideoQualitySelector.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnPreferenceClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$MyOnPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$MyOnPreferenceClickListener;-><init>(Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$MyOnPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->access$100(Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$MyOnPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->access$200(Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$MyOnPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->access$300(Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;)Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$OnItemClickListener;->onItemClick(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$MyOnPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->access$402(Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$MyOnPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->popBackStack()V

    const/4 p1, 0x1

    return p1
.end method
