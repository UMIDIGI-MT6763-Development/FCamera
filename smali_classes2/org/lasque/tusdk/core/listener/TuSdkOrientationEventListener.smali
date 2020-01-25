.class public Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;
.super Landroid/view/OrientationEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDelegate;,
        Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDegreeDelegate;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDegreeDelegate;

.field private c:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDelegate;

.field private d:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private a(I)V
    .locals 7

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->getOrien()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v0

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->values()[Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5, p1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->isMatch(I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v0

    :goto_1
    iput-object v5, p0, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->d:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    iget-boolean p1, p0, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->e:Z

    if-nez p1, :cond_2

    if-eq v5, v0, :cond_3

    :cond_2
    iget-object p1, p0, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->c:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDelegate;

    if-eqz p1, :cond_3

    invoke-interface {p1, v5}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDelegate;->onOrientationChanged(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)V

    iput-boolean v3, p0, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->e:Z

    :cond_3
    return-void
.end method


# virtual methods
.method public enable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->e:Z

    invoke-super {p0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public getDeviceAngle()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->a:I

    return v0
.end method

.method public getOrien()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->d:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    if-nez v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    iput-object v0, p0, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->d:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->d:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    return-object v0
.end method

.method public onOrientationChanged(I)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->a:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->b:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDegreeDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDegreeDelegate;->onOrientationDegreeChanged(I)V

    :cond_0
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->a(I)V

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDelegate;Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDegreeDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->c:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDelegate;

    iput-object p2, p0, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->b:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDegreeDelegate;

    return-void
.end method
