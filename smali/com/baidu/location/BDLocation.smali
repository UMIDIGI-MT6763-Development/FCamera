.class public final Lcom/baidu/location/BDLocation;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/baidu/location/b/f;


# static fields
.field public static final BDLOCATION_BD09LL_TO_GCJ02:Ljava/lang/String; = "bd09ll2gcj"

.field public static final BDLOCATION_BD09_TO_GCJ02:Ljava/lang/String; = "bd092gcj"

.field public static final BDLOCATION_GCJ02_TO_BD09:Ljava/lang/String; = "bd09"

.field public static final BDLOCATION_GCJ02_TO_BD09LL:Ljava/lang/String; = "bd09ll"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final LOCATION_WHERE_IN_CN:I = 0x1

.field public static final LOCATION_WHERE_OUT_CN:I = 0x0

.field public static final LOCATION_WHERE_UNKNOW:I = 0x2

.field public static final OPERATORS_TYPE_MOBILE:I = 0x1

.field public static final OPERATORS_TYPE_TELECOMU:I = 0x3

.field public static final OPERATORS_TYPE_UNICOM:I = 0x2

.field public static final OPERATORS_TYPE_UNKONW:I = 0x0

.field public static final TypeCacheLocation:I = 0x41

.field public static final TypeCriteriaException:I = 0x3e

.field public static final TypeGpsLocation:I = 0x3d

.field public static final TypeNetWorkException:I = 0x3f

.field public static final TypeNetWorkLocation:I = 0xa1

.field public static final TypeNone:I = 0x0

.field public static final TypeOffLineLocation:I = 0x42

.field public static final TypeOffLineLocationFail:I = 0x43

.field public static final TypeOffLineLocationNetworkFail:I = 0x44

.field public static final TypeServerError:I = 0xa7


# instance fields
.field private k0:Ljava/lang/String;

.field private k1:I

.field private k2:D

.field private k3:Ljava/lang/String;

.field private k4:Z

.field private k5:F

.field private k6:Ljava/lang/String;

.field private k7:Ljava/lang/String;

.field private k8:I

.field private kE:Ljava/lang/String;

.field private kF:I

.field private kG:D

.field private kH:Ljava/lang/String;

.field private kI:Z

.field private kJ:Z

.field private kK:Z

.field private kL:Ljava/lang/String;

.field private kM:Ljava/lang/String;

.field private kN:F

.field private kO:Ljava/lang/String;

.field private kP:D

.field private kQ:Z

.field private kR:Lcom/baidu/location/Address;

.field private kS:Z

.field private kT:Ljava/lang/String;

.field private kU:Ljava/lang/String;

.field private kV:I

.field private kW:I

.field private kX:F

.field private kY:Z

.field private kZ:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/location/a;

    invoke-direct {v0}, Lcom/baidu/location/a;-><init>()V

    sput-object v0, Lcom/baidu/location/BDLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->k1:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->k6:Ljava/lang/String;

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->kG:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->k2:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kI:Z

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->kP:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kJ:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/baidu/location/BDLocation;->k5:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kS:Z

    iput v2, p0, Lcom/baidu/location/BDLocation;->kX:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->k4:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/baidu/location/BDLocation;->kF:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/baidu/location/BDLocation;->kN:F

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->k7:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kY:Z

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kE:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kL:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kO:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->k3:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kQ:Z

    new-instance v2, Lcom/baidu/location/Address$Builder;

    invoke-direct {v2}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kH:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kT:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->k0:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kK:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->kW:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->kV:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kU:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->kM:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kZ:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->k1:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->k6:Ljava/lang/String;

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->kG:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->k2:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kI:Z

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->kP:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kJ:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/baidu/location/BDLocation;->k5:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kS:Z

    iput v2, p0, Lcom/baidu/location/BDLocation;->kX:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->k4:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/baidu/location/BDLocation;->kF:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/baidu/location/BDLocation;->kN:F

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->k7:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kY:Z

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kE:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kL:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kO:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->k3:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kQ:Z

    new-instance v2, Lcom/baidu/location/Address$Builder;

    invoke-direct {v2}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kH:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kT:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->k0:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kK:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->kW:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/baidu/location/BDLocation;->kV:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kU:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->kM:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kZ:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/baidu/location/BDLocation;->k1:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->k6:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->kG:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->k2:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->kP:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Lcom/baidu/location/BDLocation;->k5:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Lcom/baidu/location/BDLocation;->kX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/baidu/location/BDLocation;->kF:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Lcom/baidu/location/BDLocation;->kN:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->kH:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/baidu/location/BDLocation;->kW:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->kT:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->k0:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->kU:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/baidu/location/Address$Builder;

    invoke-direct {v11}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v11, v9}, Lcom/baidu/location/Address$Builder;->country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/baidu/location/Address$Builder;->countryCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/baidu/location/Address$Builder;->province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/baidu/location/Address$Builder;->city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/baidu/location/Address$Builder;->cityCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/baidu/location/Address$Builder;->district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/baidu/location/Address$Builder;->street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/baidu/location/Address$Builder;->streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    const/4 v3, 0x7

    new-array v3, v3, [Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/baidu/location/BDLocation;->k8:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->kM:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->kL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->kO:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->k3:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/baidu/location/BDLocation;->kV:I

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v0, v3, v0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kI:Z

    aget-boolean v0, v3, v2

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kJ:Z

    const/4 v0, 0x2

    aget-boolean v0, v3, v0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kS:Z

    const/4 v0, 0x3

    aget-boolean v0, v3, v0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->k4:Z

    const/4 v0, 0x4

    aget-boolean v0, v3, v0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kY:Z

    const/4 v0, 0x5

    aget-boolean v0, v3, v0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kQ:Z

    const/4 v0, 0x6

    aget-boolean v0, v3, v0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kK:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v2, Lcom/baidu/location/Poi;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kZ:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/baidu/location/BDLocation;->kZ:Ljava/util/List;

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/baidu/location/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/BDLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/location/BDLocation;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->k1:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->k6:Ljava/lang/String;

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->kG:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->k2:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kI:Z

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->kP:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kJ:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/baidu/location/BDLocation;->k5:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kS:Z

    iput v2, p0, Lcom/baidu/location/BDLocation;->kX:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->k4:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/baidu/location/BDLocation;->kF:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/baidu/location/BDLocation;->kN:F

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->k7:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kY:Z

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kE:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kL:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kO:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->k3:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kQ:Z

    new-instance v2, Lcom/baidu/location/Address$Builder;

    invoke-direct {v2}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kH:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kT:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->k0:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kK:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->kW:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/baidu/location/BDLocation;->kV:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kU:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->kM:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kZ:Ljava/util/List;

    iget v2, p1, Lcom/baidu/location/BDLocation;->k1:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->k1:I

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->k6:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->k6:Ljava/lang/String;

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->kG:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->kG:D

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->k2:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->k2:D

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->kI:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->kI:Z

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->kP:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->kP:D

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->kJ:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->kJ:Z

    iget v2, p1, Lcom/baidu/location/BDLocation;->k5:F

    iput v2, p0, Lcom/baidu/location/BDLocation;->k5:F

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->kS:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->kS:Z

    iget v2, p1, Lcom/baidu/location/BDLocation;->kX:F

    iput v2, p0, Lcom/baidu/location/BDLocation;->kX:F

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->k4:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->k4:Z

    iget v2, p1, Lcom/baidu/location/BDLocation;->kF:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->kF:I

    iget v2, p1, Lcom/baidu/location/BDLocation;->kN:F

    iput v2, p0, Lcom/baidu/location/BDLocation;->kN:F

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->k7:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->k7:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->kY:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->kY:Z

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->kE:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->kE:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->kQ:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->kQ:Z

    new-instance v2, Lcom/baidu/location/Address$Builder;

    invoke-direct {v2}, Lcom/baidu/location/Address$Builder;-><init>()V

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->country:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->countryCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->province:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->city:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->cityCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->cityCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->district:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->street:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->streetNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->kH:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->kH:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->kT:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->kT:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->k0:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->k0:Ljava/lang/String;

    iget v2, p1, Lcom/baidu/location/BDLocation;->kV:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->kV:I

    iget v2, p1, Lcom/baidu/location/BDLocation;->kW:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->kW:I

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->kK:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->kK:Z

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->kU:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->kU:Ljava/lang/String;

    iget v2, p1, Lcom/baidu/location/BDLocation;->k8:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->k8:I

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->kM:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->kM:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->kL:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->kL:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->kO:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->kO:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->k3:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->k3:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->kZ:Ljava/util/List;

    if-nez v2, :cond_1

    :cond_0
    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kZ:Ljava/util/List;

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v2, p1, Lcom/baidu/location/BDLocation;->kZ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->kZ:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/Poi;

    new-instance v3, Lcom/baidu/location/Poi;

    invoke-virtual {v2}, Lcom/baidu/location/Poi;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/baidu/location/Poi;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/baidu/location/Poi;->getRank()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/location/Poi;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->k1:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->k6:Ljava/lang/String;

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->kG:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->k2:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kI:Z

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->kP:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kJ:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/baidu/location/BDLocation;->k5:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kS:Z

    iput v2, p0, Lcom/baidu/location/BDLocation;->kX:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->k4:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/baidu/location/BDLocation;->kF:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/baidu/location/BDLocation;->kN:F

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->k7:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kY:Z

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kE:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kL:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kO:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->k3:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kQ:Z

    new-instance v2, Lcom/baidu/location/Address$Builder;

    invoke-direct {v2}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kH:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kT:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->k0:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kK:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->kW:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/baidu/location/BDLocation;->kV:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kU:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->kM:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kZ:Ljava/util/List;

    if-eqz p1, :cond_20

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_12

    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "result"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    const-string v5, "time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/location/BDLocation;->setTime(Ljava/lang/String;)V

    const/16 p1, 0x3d

    if-ne v4, p1, :cond_4

    const-string p1, "content"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "point"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "y"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string v3, "x"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    const-string v1, "radius"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string v1, "s"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setSpeed(F)V

    const-string v1, "d"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setDirection(F)V

    const-string v1, "n"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setSatelliteNumber(I)V

    const-string v1, "h"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "h"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/baidu/location/BDLocation;->setAltitude(D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    :try_start_2
    const-string v1, "in_cn"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "in_cn"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_0
    :try_start_3
    iget p1, p0, Lcom/baidu/location/BDLocation;->kV:I

    if-nez p1, :cond_3

    const-string p1, "wgs84"

    :goto_1
    invoke-virtual {p0, p1}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_3
    const-string p1, "gcj02"

    goto :goto_1

    :cond_4
    const/16 p1, 0xa1

    const/4 v5, 0x2

    if-ne v4, p1, :cond_1d

    const-string p1, "content"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "point"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "y"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string v4, "x"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    const-string v3, "radius"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string v3, "sema"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "sema"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "aptag"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "aptag"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    :goto_2
    iput-object v4, p0, Lcom/baidu/location/BDLocation;->kL:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const-string v4, ""

    goto :goto_2

    :cond_6
    :goto_3
    const-string v4, "aptagd"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "aptagd"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "pois"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v0

    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_7

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "pname"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "pid"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "pr"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    new-instance v8, Lcom/baidu/location/Poi;

    invoke-direct {v8, v10, v9, v11, v12}, Lcom/baidu/location/Poi;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    iput-object v6, p0, Lcom/baidu/location/BDLocation;->kZ:Ljava/util/List;

    :cond_8
    const-string v4, "poiregion"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "poiregion"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->kO:Ljava/lang/String;

    :cond_9
    const-string v4, "regular"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "regular"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->k3:Ljava/lang/String;

    :cond_a
    const-string v3, "addr"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "addr"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_b

    aget-object v6, v3, v0

    goto :goto_5

    :cond_b
    move-object v6, v1

    :goto_5
    if-le v4, v2, :cond_c

    aget-object v7, v3, v2

    goto :goto_6

    :cond_c
    move-object v7, v1

    :goto_6
    if-le v4, v5, :cond_d

    aget-object v5, v3, v5

    goto :goto_7

    :cond_d
    move-object v5, v1

    :goto_7
    const/4 v8, 0x3

    if-le v4, v8, :cond_e

    aget-object v8, v3, v8

    goto :goto_8

    :cond_e
    move-object v8, v1

    :goto_8
    const/4 v9, 0x4

    if-le v4, v9, :cond_f

    aget-object v9, v3, v9

    goto :goto_9

    :cond_f
    move-object v9, v1

    :goto_9
    const/4 v10, 0x5

    if-le v4, v10, :cond_10

    aget-object v10, v3, v10

    goto :goto_a

    :cond_10
    move-object v10, v1

    :goto_a
    const/4 v11, 0x6

    if-le v4, v11, :cond_11

    aget-object v11, v3, v11

    goto :goto_b

    :cond_11
    move-object v11, v1

    :goto_b
    const/4 v12, 0x7

    if-le v4, v12, :cond_12

    aget-object v3, v3, v12

    goto :goto_c

    :cond_12
    move-object v3, v1

    :goto_c
    new-instance v4, Lcom/baidu/location/Address$Builder;

    invoke-direct {v4}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v4, v11}, Lcom/baidu/location/Address$Builder;->country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/baidu/location/Address$Builder;->countryCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/baidu/location/Address$Builder;->province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/baidu/location/Address$Builder;->city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/baidu/location/Address$Builder;->cityCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/baidu/location/Address$Builder;->district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/baidu/location/Address$Builder;->street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/baidu/location/Address$Builder;->streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->kY:Z

    goto :goto_d

    :cond_13
    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kY:Z

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setAddrStr(Ljava/lang/String;)V

    :goto_d
    const-string v3, "floor"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "floor"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->kH:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/location/BDLocation;->kH:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kH:Ljava/lang/String;

    :cond_14
    const-string v3, "loctp"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "loctp"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->kU:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/location/BDLocation;->kU:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kU:Ljava/lang/String;

    :cond_15
    const-string v3, "bldgid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "bldgid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->kT:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/location/BDLocation;->kT:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->kT:Ljava/lang/String;

    :cond_16
    const-string v3, "bldg"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "bldg"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->k0:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/location/BDLocation;->k0:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->k0:Ljava/lang/String;

    :cond_17
    const-string v1, "ibav"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "ibav"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    :goto_e
    iput v0, p0, Lcom/baidu/location/BDLocation;->kW:I

    goto :goto_f

    :cond_18
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_e

    :cond_19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/BDLocation;->kW:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1a
    :goto_f
    :try_start_4
    const-string v1, "in_cn"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "in_cn"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V

    goto :goto_10

    :cond_1b
    invoke-virtual {p0, v2}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_10
    :try_start_5
    iget p1, p0, Lcom/baidu/location/BDLocation;->kV:I

    if-nez p1, :cond_1c

    const-string p1, "wgs84"

    goto/16 :goto_1

    :cond_1c
    const-string p1, "gcj02"

    goto/16 :goto_1

    :cond_1d
    const/16 p1, 0x42

    if-eq v4, p1, :cond_1f

    const/16 p1, 0x44

    if-ne v4, p1, :cond_1e

    goto :goto_11

    :cond_1e
    const/16 p1, 0xa7

    if-ne v4, p1, :cond_20

    invoke-virtual {p0, v5}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V

    goto :goto_12

    :cond_1f
    :goto_11
    const-string p1, "content"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "point"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    const-string v1, "radius"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string v1, "isCellChanged"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/location/BDLocation;->if(Ljava/lang/Boolean;)V

    const-string p1, "gcj02"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iput v0, p0, Lcom/baidu/location/BDLocation;->k1:I

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->kY:Z

    :cond_20
    :goto_12
    return-void
.end method

.method private dC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->kO:Ljava/lang/String;

    return-object v0
.end method

.method private dD()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->kM:Ljava/lang/String;

    return-object v0
.end method

.method private dE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->k3:Ljava/lang/String;

    return-object v0
.end method

.method private static dF()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private if(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->kQ:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "http://lba.baidu.com/"

    iget-wide v1, p0, Lcom/baidu/location/BDLocation;->kG:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/location/BDLocation;->k2:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/baidu/location/BDLocation;->dD()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/baidu/location/BDLocation;->dF()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ak="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "lat="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "lng="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "cu="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mb="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/location/Jni;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?a="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAddrStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Lcom/baidu/location/Address;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    return-object v0
.end method

.method public getAltitude()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->kP:D

    return-wide v0
.end method

.method public getBuildingID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->kT:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildingName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->k0:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCoorType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->k7:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDerect()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->kN:F

    return v0
.end method

.method public getDirection()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->kN:F

    return v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getFloor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->kH:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->kG:D

    return-wide v0
.end method

.method public getLocType()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->k1:I

    return v0
.end method

.method public getLocationDescribe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->kL:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationWhere()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->kV:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->k2:D

    return-wide v0
.end method

.method public getNetworkLocationType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->kU:Ljava/lang/String;

    return-object v0
.end method

.method public getOperators()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->k8:I

    return v0
.end method

.method public getPoiList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->kZ:Ljava/util/List;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->kX:F

    return v0
.end method

.method public getSatelliteNumber()I
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->k4:Z

    iget v0, p0, Lcom/baidu/location/BDLocation;->kF:I

    return v0
.end method

.method public getSemaAptag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->kL:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->k5:F

    return v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->streetNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->k6:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddr()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->kY:Z

    return v0
.end method

.method public hasAltitude()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->kI:Z

    return v0
.end method

.method public hasRadius()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->kS:Z

    return v0
.end method

.method public hasSateNumber()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->k4:Z

    return v0
.end method

.method public hasSpeed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->kJ:Z

    return v0
.end method

.method public internalSet(ILjava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iput-object p2, p0, Lcom/baidu/location/BDLocation;->kM:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public isCellChangeFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->kQ:Z

    return v0
.end method

.method public isIndoorLocMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->kK:Z

    return v0
.end method

.method public isParkAvailable()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->kW:I

    return v0
.end method

.method public setAddr(Lcom/baidu/location/Address;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->kY:Z

    :cond_0
    return-void
.end method

.method public setAddrStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->kE:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->kY:Z

    return-void
.end method

.method public setAltitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->kP:D

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->kI:Z

    return-void
.end method

.method public setBuildingID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->kT:Ljava/lang/String;

    return-void
.end method

.method public setBuildingName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->k0:Ljava/lang/String;

    return-void
.end method

.method public setCoorType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->k7:Ljava/lang/String;

    return-void
.end method

.method public setDirection(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->kN:F

    return-void
.end method

.method public setFloor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->kH:Ljava/lang/String;

    return-void
.end method

.method public setIndoorLocMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->kK:Z

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->kG:D

    return-void
.end method

.method public setLocType(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->k1:I

    return-void
.end method

.method public setLocationDescribe(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->kL:Ljava/lang/String;

    return-void
.end method

.method public setLocationWhere(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->kV:I

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->k2:D

    return-void
.end method

.method public setNetworkLocationType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->kU:Ljava/lang/String;

    return-void
.end method

.method public setOperators(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->k8:I

    return-void
.end method

.method public setParkAvailable(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->kW:I

    return-void
.end method

.method public setPoiList(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->kZ:Ljava/util/List;

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->kX:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->kS:Z

    return-void
.end method

.method public setSatelliteNumber(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->kF:I

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->k5:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->kJ:Z

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->k6:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/baidu/location/BDLocation;->k1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->k6:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->kG:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->k2:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->kP:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget p2, p0, Lcom/baidu/location/BDLocation;->k5:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/baidu/location/BDLocation;->kX:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/baidu/location/BDLocation;->kF:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/baidu/location/BDLocation;->kN:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->kH:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/baidu/location/BDLocation;->kW:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->kT:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->k0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->kU:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object p2, p2, Lcom/baidu/location/Address;->province:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object p2, p2, Lcom/baidu/location/Address;->city:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object p2, p2, Lcom/baidu/location/Address;->district:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object p2, p2, Lcom/baidu/location/Address;->street:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object p2, p2, Lcom/baidu/location/Address;->streetNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object p2, p2, Lcom/baidu/location/Address;->cityCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object p2, p2, Lcom/baidu/location/Address;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object p2, p2, Lcom/baidu/location/Address;->country:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->kR:Lcom/baidu/location/Address;

    iget-object p2, p2, Lcom/baidu/location/Address;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/baidu/location/BDLocation;->k8:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->kM:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->kL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->kO:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->k3:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/baidu/location/BDLocation;->kV:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x7

    new-array p2, p2, [Z

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->kI:Z

    const/4 v1, 0x0

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->kJ:Z

    const/4 v1, 0x1

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->kS:Z

    const/4 v1, 0x2

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->k4:Z

    const/4 v1, 0x3

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->kY:Z

    const/4 v1, 0x4

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->kQ:Z

    const/4 v1, 0x5

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->kK:Z

    const/4 v1, 0x6

    aput-boolean v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->kZ:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
