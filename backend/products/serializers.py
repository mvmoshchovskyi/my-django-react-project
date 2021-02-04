from rest_framework.serializers import ModelSerializer, SerializerMethodField
from .models import ProductsModel


class ProductSerializer(ModelSerializer):
    image = SerializerMethodField()

    class Meta:
        model = ProductsModel
        fields = '__all__'

    def get_image(self, obj):
        return obj.image.url
