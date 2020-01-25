.class Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/TuSdkLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TuSdkLocationListener"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/utils/TuSdkLocation;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/core/utils/TuSdkLocation;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationListener;->a:Lorg/lasque/tusdk/core/utils/TuSdkLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/core/utils/TuSdkLocation;Lorg/lasque/tusdk/core/utils/TuSdkLocation$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationListener;-><init>(Lorg/lasque/tusdk/core/utils/TuSdkLocation;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationListener;->a:Lorg/lasque/tusdk/core/utils/TuSdkLocation;

    invoke-virtual {v0, p1, p0}, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->locationChangedCallback(Landroid/location/Location;Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationListener;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationListener;->b:Ljava/lang/String;

    return-void
.end method
