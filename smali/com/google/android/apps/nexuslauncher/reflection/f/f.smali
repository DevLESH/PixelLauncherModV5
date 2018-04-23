.class public Lcom/google/android/apps/nexuslauncher/reflection/f/f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/reflection/l;
.implements Lcom/google/research/reflection/c/a;


# static fields
.field static final wH:J

.field static wM:Landroid/util/SparseArray;


# instance fields
.field final mContext:Landroid/content/Context;

.field wI:Lcom/google/android/gms/location/places/PlaceRequest;

.field wJ:Lcom/google/android/gms/common/api/r;

.field private wK:Lcom/google/android/gms/location/places/b;

.field private wL:Ljava/lang/String;

.field private wx:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wH:J

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 72
    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_ACCOUNTING"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_AIRPORT"

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_AMUSEMENT_PARK"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_AQUARIUM"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_ART_GALLERY"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_ATM"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_BAKERY"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_BANK"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_BAR"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_BEAUTY_SALON"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_BICYCLE_STORE"

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_BOOK_STORE"

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_BOWLING_ALLEY"

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_BUS_STATION"

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_CAFE"

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_CAMPGROUND"

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_CAR_DEALER"

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_CAR_RENTAL"

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_CAR_REPAIR"

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_CAR_WASH"

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_CASINO"

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_CEMETERY"

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_CHURCH"

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_CITY_HALL"

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_CLOTHING_STORE"

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_CONVENIENCE_STORE"

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_COURTHOUSE"

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_DENTIST"

    const/16 v2, 0x1c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_DEPARTMENT_STORE"

    const/16 v2, 0x1d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_DOCTOR"

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_ELECTRICIAN"

    const/16 v2, 0x1f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_ELECTRONICS_STORE"

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_EMBASSY"

    const/16 v2, 0x21

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_ESTABLISHMENT"

    const/16 v2, 0x22

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_FINANCE"

    const/16 v2, 0x23

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_FIRE_STATION"

    const/16 v2, 0x24

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_FLORIST"

    const/16 v2, 0x25

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_FOOD"

    const/16 v2, 0x26

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_FUNERAL_HOME"

    const/16 v2, 0x27

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_FURNITURE_STORE"

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_GAS_STATION"

    const/16 v2, 0x29

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_GENERAL_CONTRACTOR"

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_GROCERY_OR_SUPERMARKET"

    const/16 v2, 0x2b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_GYM"

    const/16 v2, 0x2c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_HAIR_CARE"

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_HARDWARE_STORE"

    const/16 v2, 0x2e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_HEALTH"

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_HINDU_TEMPLE"

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_HOME_GOODS_STORE"

    const/16 v2, 0x31

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_HOSPITAL"

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_INSURANCE_AGENCY"

    const/16 v2, 0x33

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_JEWELRY_STORE"

    const/16 v2, 0x34

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_LAUNDRY"

    const/16 v2, 0x35

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_LAWYER"

    const/16 v2, 0x36

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_LIBRARY"

    const/16 v2, 0x37

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_LIQUOR_STORE"

    const/16 v2, 0x38

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_LOCAL_GOVERNMENT_OFFICE"

    const/16 v2, 0x39

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_LOCKSMITH"

    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_LODGING"

    const/16 v2, 0x3b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_MEAL_DELIVERY"

    const/16 v2, 0x3c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_MEAL_TAKEAWAY"

    const/16 v2, 0x3d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_MOSQUE"

    const/16 v2, 0x3e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_MOVIE_RENTAL"

    const/16 v2, 0x3f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_MOVIE_THEATER"

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_MOVING_COMPANY"

    const/16 v2, 0x41

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_MUSEUM"

    const/16 v2, 0x42

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_NIGHT_CLUB"

    const/16 v2, 0x43

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_PAINTER"

    const/16 v2, 0x44

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_PARK"

    const/16 v2, 0x45

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_PARKING"

    const/16 v2, 0x46

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_PET_STORE"

    const/16 v2, 0x47

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_PHARMACY"

    const/16 v2, 0x48

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_PHYSIOTHERAPIST"

    const/16 v2, 0x49

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_PLACE_OF_WORSHIP"

    const/16 v2, 0x4a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_PLUMBER"

    const/16 v2, 0x4b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_POLICE"

    const/16 v2, 0x4c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_POST_OFFICE"

    const/16 v2, 0x4d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_REAL_ESTATE_AGENCY"

    const/16 v2, 0x4e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_RESTAURANT"

    const/16 v2, 0x4f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_ROOFING_CONTRACTOR"

    const/16 v2, 0x50

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_RV_PARK"

    const/16 v2, 0x51

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_SCHOOL"

    const/16 v2, 0x52

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_SHOE_STORE"

    const/16 v2, 0x53

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_SHOPPING_MALL"

    const/16 v2, 0x54

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_SPA"

    const/16 v2, 0x55

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_STADIUM"

    const/16 v2, 0x56

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_STORAGE"

    const/16 v2, 0x57

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_STORE"

    const/16 v2, 0x58

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_SUBWAY_STATION"

    const/16 v2, 0x59

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_SYNAGOGUE"

    const/16 v2, 0x5a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 162
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_TAXI_STAND"

    const/16 v2, 0x5b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_TRAIN_STATION"

    const/16 v2, 0x5c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_TRAVEL_AGENCY"

    const/16 v2, 0x5d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_UNIVERSITY"

    const/16 v2, 0x5e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_VETERINARY_CARE"

    const/16 v2, 0x5f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 167
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_ZOO"

    const/16 v2, 0x60

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_ADMINISTRATIVE_AREA_LEVEL_1"

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_ADMINISTRATIVE_AREA_LEVEL_2"

    const/16 v2, 0x3ea

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_ADMINISTRATIVE_AREA_LEVEL_3"

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_COLLOQUIAL_AREA"

    const/16 v2, 0x3ec

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_COUNTRY"

    const/16 v2, 0x3ed

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_FLOOR"

    const/16 v2, 0x3ee

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_GEOCODE"

    const/16 v2, 0x3ef

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_INTERSECTION"

    const/16 v2, 0x3f0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_LOCALITY"

    const/16 v2, 0x3f1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_NATURAL_FEATURE"

    const/16 v2, 0x3f2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_NEIGHBORHOOD"

    const/16 v2, 0x3f3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_POLITICAL"

    const/16 v2, 0x3f4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_POINT_OF_INTEREST"

    const/16 v2, 0x3f5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_POST_BOX"

    const/16 v2, 0x3f6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_POSTAL_CODE"

    const/16 v2, 0x3f7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_POSTAL_CODE_PREFIX"

    const/16 v2, 0x3f8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_POSTAL_TOWN"

    const/16 v2, 0x3f9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_PREMISE"

    const/16 v2, 0x3fa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_ROOM"

    const/16 v2, 0x3fb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_ROUTE"

    const/16 v2, 0x3fc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_STREET_ADDRESS"

    const/16 v2, 0x3fd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_SUBLOCALITY"

    const/16 v2, 0x3fe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_SUBLOCALITY_LEVEL_1"

    const/16 v2, 0x3ff

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_SUBLOCALITY_LEVEL_2"

    const/16 v2, 0x400

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_SUBLOCALITY_LEVEL_3"

    const/16 v2, 0x401

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_SUBLOCALITY_LEVEL_4"

    const/16 v2, 0x402

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_SUBLOCALITY_LEVEL_5"

    const/16 v2, 0x403

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_SUBPREMISE"

    const/16 v2, 0x404

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wM:Landroid/util/SparseArray;

    const-string v1, "Place.TYPE_TRANSIT_STATION"

    const/16 v2, 0x406

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/r;Lcom/google/android/gms/location/places/b;Landroid/content/Context;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wJ:Lcom/google/android/gms/common/api/r;

    .line 201
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wK:Lcom/google/android/gms/location/places/b;

    .line 202
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->mContext:Landroid/content/Context;

    .line 203
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wx:Ljava/util/List;

    .line 204
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wJ:Lcom/google/android/gms/common/api/r;

    new-instance p2, Lcom/google/android/apps/nexuslauncher/reflection/f/g;

    invoke-direct {p2, p0}, Lcom/google/android/apps/nexuslauncher/reflection/f/g;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/f/f;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/common/api/t;)V

    new-instance p2, Lcom/google/android/apps/nexuslauncher/reflection/f/h;

    invoke-direct {p2, p0}, Lcom/google/android/apps/nexuslauncher/reflection/f/h;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/f/f;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/common/api/u;)V

    .line 205
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/reflection/f/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wL:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/research/reflection/c/c;)Lcom/google/research/reflection/c/a;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wx:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    return-object p0
.end method

.method public final cM()V
    .locals 3

    .line 394
    :try_start_0
    sget-object v0, Lcom/google/android/gms/location/places/j;->RV:Lcom/google/android/gms/location/places/e;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wJ:Lcom/google/android/gms/common/api/r;

    .line 395
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->dg()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/places/e;->a(Lcom/google/android/gms/common/api/r;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/v;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 402
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 407
    return-void

    .line 403
    :catch_1
    move-exception v0

    .line 408
    return-void
.end method

.method public final de()V
    .locals 5

    .line 359
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wL:Ljava/lang/String;

    .line 361
    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/g/g;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/g;-><init>()V

    .line 362
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/google/android/apps/nexuslauncher/reflection/g/g;->vX:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    iput-wide v2, v4, Lcom/google/android/apps/nexuslauncher/reflection/e/l;->time:J

    .line 363
    iget-object v2, v1, Lcom/google/android/apps/nexuslauncher/reflection/g/g;->vX:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    iput-object v0, v2, Lcom/google/android/apps/nexuslauncher/reflection/e/l;->vZ:Ljava/lang/String;

    .line 364
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;-><init>()V

    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/g/e;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/g/e;-><init>()V

    .line 365
    invoke-virtual {v2, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->a(Lcom/google/research/reflection/signal/c;)Lcom/google/research/reflection/signal/b;

    move-result-object v1

    .line 364
    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->a(Lcom/google/research/reflection/signal/b;)Lcom/google/research/reflection/signal/ReflectionEvent;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    .line 366
    const-string v1, "PublicPlaceSensor"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->m(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    .line 367
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wx:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/c/c;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->dn()Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/research/reflection/c/c;->a(Lcom/google/research/reflection/signal/ReflectionEvent;)V

    goto :goto_0

    .line 369
    :cond_0
    return-void
.end method

.method public final dg()Landroid/app/PendingIntent;
    .locals 4

    .line 242
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 243
    const-string v1, "android.places.ui.PLACE_UPDATE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 283
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 284
    invoke-static {p2}, Lcom/google/android/gms/location/places/g;->a(Landroid/content/Intent;)Lcom/google/android/gms/location/places/g;

    move-result-object p2

    .line 285
    if-nez p2, :cond_0

    .line 289
    return-void

    .line 292
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/location/places/g;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p2, Lcom/google/android/gms/location/places/g;->mStatus:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->ea()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {p2}, Lcom/google/android/gms/location/places/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/places/f;

    .line 295
    invoke-interface {v1}, Lcom/google/android/gms/location/places/f;->gN()Lcom/google/android/gms/location/places/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/location/places/c;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wK:Lcom/google/android/gms/location/places/b;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wJ:Lcom/google/android/gms/common/api/r;

    .line 302
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 301
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/location/places/b;->a(Lcom/google/android/gms/common/api/r;[Ljava/lang/String;)Lcom/google/android/gms/common/api/v;

    move-result-object p1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/reflection/f/j;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/f/f;)V

    .line 303
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/v;->a(Lcom/google/android/gms/common/api/z;)V

    goto :goto_1

    .line 331
    :cond_2
    iget-object p1, p2, Lcom/google/android/gms/location/places/g;->mStatus:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->ea()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 335
    invoke-virtual {p2}, Lcom/google/android/gms/location/places/g;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/location/places/g;->release()V

    .line 342
    return-void

    .line 341
    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lcom/google/android/gms/location/places/g;->release()V

    throw p1
.end method
