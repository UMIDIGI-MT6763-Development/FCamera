.class public interface abstract Lcom/freeme/camera/common/IAppUi;
.super Ljava/lang/Object;
.source "IAppUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/IAppUi$HintInfo;,
        Lcom/freeme/camera/common/IAppUi$HintType;,
        Lcom/freeme/camera/common/IAppUi$AnimationType;,
        Lcom/freeme/camera/common/IAppUi$AnimationData;,
        Lcom/freeme/camera/common/IAppUi$ModeItem;,
        Lcom/freeme/camera/common/IAppUi$AppUIState;
    }
.end annotation


# static fields
.field public static final CAMERA_SWITCH:I = 0xa

.field public static final DEFAULT_PRIORITY:I = 0x7fffffff

.field public static final FACE_BEAUTY_SWITCH:I = 0xc

.field public static final GESTURE:I = 0x6

.field public static final INDICATOR:I = 0x4

.field public static final MODE_SWITCHER:I = 0x1

.field public static final PREVIEW_FRAME:I = 0x5

.field public static final QUICK_SWITCHER:I = 0x0

.field public static final SCREEN_HINT:I = 0x8

.field public static final SHUTTER_BUTTON:I = 0x3

.field public static final SHUTTER_TEXT:I = 0x7

.field public static final THUMBNAIL:I = 0x2

.field public static final WIDE_ANGLE_SWITCH:I = 0xb


# virtual methods
.method public abstract addSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V
.end method

.method public abstract addToIndicatorView(Landroid/view/View;I)V
.end method

.method public abstract addToQuickSwitcher(Landroid/view/View;I)V
.end method

.method public abstract animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V
.end method

.method public abstract animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V
.end method

.method public abstract applyAllUIEnabled(Z)V
.end method

.method public abstract applyAllUIEnabledImmediately(Z)V
.end method

.method public abstract applyAllUIVisibility(I)V
.end method

.method public abstract applyAllUIVisibilityImmediately(I)V
.end method

.method public abstract attachEffectViewEntry()V
.end method

.method public abstract attachSwitchCameraViewEntry()V
.end method

.method public abstract attachSwitchMicroLenViewEntry()V
.end method

.method public abstract attachSwitchWideAngleViewEntry()V
.end method

.method public abstract clearPreviewStatusListener(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
.end method

.method public abstract getCurrentCameraId()Ljava/lang/String;
.end method

.method public abstract getFaceBeautyViewLayout()Landroid/widget/RelativeLayout;
.end method

.method public abstract getFaceViewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;
.end method

.method public abstract getGridPreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;
.end method

.method public abstract getIkoFlashView()Landroid/view/View;
.end method

.method public abstract getIkoTipView()Landroid/widget/TextView;
.end method

.method public abstract getModeRootView()Landroid/view/ViewGroup;
.end method

.method public abstract getPhotoUi()Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getPreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;
.end method

.method public abstract getPreviewRatio()I
.end method

.method public abstract getReviewUI()Lcom/freeme/camera/common/mode/IReviewUI;
.end method

.method public abstract getShutterButton()Landroid/view/View;
.end method

.method public abstract getShutterRootView()Landroid/view/View;
.end method

.method public abstract getThumbnailViewWidth()I
.end method

.method public abstract getTopbarAndShutterRootContainer()Landroid/view/ViewGroup;
.end method

.method public abstract getUIRootView()Landroid/view/ViewGroup;
.end method

.method public abstract getVideoUi()Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;
.end method

.method public abstract hideQuickSwitcherOption()V
.end method

.method public abstract hideSavingDialog()V
.end method

.method public abstract hideScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V
.end method

.method public abstract onCameraSelected(Ljava/lang/String;)V
.end method

.method public abstract onCaptureState(Lcom/freeme/camera/common/CaptureState;)V
.end method

.method public abstract onPreviewStarted(Ljava/lang/String;)V
.end method

.method public abstract refreshSettingView()V
.end method

.method public abstract registerGestureListener(Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;I)V
.end method

.method public abstract registerIndicatorDone()V
.end method

.method public abstract registerMode(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/IAppUi$ModeItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerOnPreviewAreaChangedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;)V
.end method

.method public abstract registerOnPreviewTouchedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewTouchedListener;)V
.end method

.method public abstract registerOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;I)V
.end method

.method public abstract registerQuickIconDone()V
.end method

.method public abstract removeFromIndicatorView(Landroid/view/View;)V
.end method

.method public abstract removeFromQuickSwitcher(Landroid/view/View;)V
.end method

.method public abstract removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V
.end method

.method public abstract removeSwitchMicroLenViewEntry()V
.end method

.method public abstract removeSwitchWideAngleViewEntry()V
.end method

.method public abstract setCurrentCameraId(Ljava/lang/String;)V
.end method

.method public abstract setEffectViewEntry(Landroid/view/View;)V
.end method

.method public abstract setMicroLenSwitcherViewEntry(Landroid/view/View;)V
.end method

.method public abstract setModeChangeListener(Lcom/freeme/camera/common/IAppUiListener$OnModeChangeListener;)V
.end method

.method public abstract setPluginVisibility(Z)V
.end method

.method public abstract setPreviewSize(IILcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
.end method

.method public abstract setSwitchCameraViewEntry(Landroid/view/View;)V
.end method

.method public abstract setThumbnailClickedListener(Lcom/freeme/camera/common/IAppUiListener$OnThumbnailClickedListener;)V
.end method

.method public abstract setUIEnabled(IZ)V
.end method

.method public abstract setUIEnabledImmediately(IZ)V
.end method

.method public abstract setUIVisibility(II)V
.end method

.method public abstract setUIVisibilityImmediately(II)V
.end method

.method public abstract setWideAngleSwitcherViewEntry(Landroid/view/View;)V
.end method

.method public abstract setZoomClickListener(Lcom/freeme/camera/common/app/IApp$OnZoomHintClickListener;)V
.end method

.method public abstract showFaceBeautyView(Z)V
.end method

.method public abstract showQuickSwitcherOption(Landroid/view/View;)V
.end method

.method public abstract showSavingDialog(Ljava/lang/String;Z)V
.end method

.method public abstract showScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V
.end method

.method public abstract showZoomRatioHint(Z)V
.end method

.method public abstract triggerModeChanged(Ljava/lang/String;)V
.end method

.method public abstract triggerShutterButtonClick(I)V
.end method

.method public abstract triggerShutterButtonLongPressed(I)V
.end method

.method public abstract unregisterGestureListener(Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;)V
.end method

.method public abstract unregisterOnPreviewAreaChangedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;)V
.end method

.method public abstract unregisterOnPreviewTouchedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewTouchedListener;)V
.end method

.method public abstract unregisterOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;)V
.end method

.method public abstract updateBrightnessBackGround(Z)V
.end method

.method public abstract updateCurrentMode(Ljava/lang/String;)V
.end method

.method public abstract updateSettingIconVisibility()V
.end method

.method public abstract updateThumbnail(Landroid/graphics/Bitmap;)V
.end method
