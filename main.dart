import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => InstagramProfilePage();
}



class InstagramProfilePage extends State<MyApp>  with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.animateTo(0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.lock_open),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text("abdul_hadi"),
                  ],
                ),
              ],
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add_box_rounded),
                tooltip: 'Comment Icon',
                onPressed: () {},
              ), //IconButton
              IconButton(
                icon: const Icon(Icons.menu),
                tooltip: 'Setting Icon',
                onPressed: () {},
              ), //IconButton
            ], //<Widget>[]
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                // Profile picture and name
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(
                                    'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYVFRgWFhYYGRgYGhwaGRgaGBgYGBoYGRgcGhoaGhocIS4lHCErIRgYJzgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHjQhJCs0NDQxNDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ1NDQ0NDQ0NDQ0NDQ0NP/AABEIARAAugMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAFAQIDBAYABwj/xABAEAACAQIEBAMGAgkCBgMBAAABAhEAAwQSITEFQVFhInGBBhMykaHwscEHFEJSYnLR4fEjgiRTY3OSsjSiwhb/xAAYAQADAQEAAAAAAAAAAAAAAAAAAQIDBP/EACMRAQEBAQADAAAGAwAAAAAAAAABEQISITEDIkFRYXETMpH/2gAMAwEAAhEDEQA/AMLgAYbetv7H2CWf/tn6msZgNmrf+xfxOP8Ap1r1/qxv1q0wQNkrJ1WsVicKUMTP+a9Dw0lBpGmx3FZHiFjxkGsuLhwLWyWRhJlRI/OoODITftiT8a/jRW5hsoqLgFmcTbH8f4A1e+qeD2Jwze9c6wCPwq3hk150ffCLlI66k0JFsq2XnWXlogsmIAFW7DZhQMkgwRV/BXoqLDnpZcakT9n/AAayHtbw2B7xfJv60TscQzcQv2p0XD4cgdGz3yx+Tp8hRHH2Q6Mp5g1XP5anfbyV0NV2Q8jRTEWSCQeRIoTgL3+rdtndHDj+VwGI+ZPzreK1GymmMhjnrVxkqMpQeqRU1DdU9TRIppVV0pGoNPU1C01ddKgZKDVHnqagcnqfnVx0qvcWgKrE9TUMnqancVBQBjh3wHzrfexVyL0dVj86wHD/AIPNq1nAL5S6D+6R8udadTeWNesWVqlxXh6OkxrOh9aIW9QI5ioVsMECHU5vpM1yS+zDr3BJVY1Ok+VZ3gVuMYB0Z/oDXoYGlYPg/wD8xz0Ln6mq5tspt2x0qvZty5aNhHrQvivGCqgJEnc7xRHg9xikPE6bd6nLIEmLszTLViKvlabFGh5twrGn/wDoMUk6G1kA7pbsN/8Al/ma9CZa8Vw3EgvHmuEwP1u5bJ5Q2awJ7SRXtLFYksoHdhWnXN9Z+yevVYPjeGy3H7mfnWJvMLfEUB0F5FQnu5KIfR0QnsDXpnGLCOxIv2Btvcj8BXl/6SML7t8OwZSzW28SNI8FxspBHQsa05lz2ObL6lGnSomSrt28LmW6BAuot0Dp7xQ7D0YsPSq70xOlZ1qtcSrrioWSkuVRZKhZKukVCwpHqk6VUupRJ1qneWgw24KrZavXVqrFBiWAPgXzo7gLniJoHgB4E86LYRtfWtGNex+zOKFywp5r4T6UTcbedYX2J4kEfIx0f/25V6CBXL3z49CGNsawnBEnEv3z/U1uMTmjwx305RyrFezyzfY9mP1p8fKpImEhmU/vRWvwdnKPOgmCwrXXZjsG1PlyrSRStMhNMmnEVFGo8xSia+bMVbN3FXuhvXWJ7G4xrdrwY+4DKZUKDHIabVj7yBLtxeYuPM9c5n61rMB7QBbPuyQJ5kfD8q7+ZIj8Tb8ZXiSZTFZ7FjWaN8RvgljPlyJ6UDxFwCo6XxG89nb2fA2jrNp7lk+Ui6npF1x/tq1NBfYC7msYu2TJAs3lH8rm25HpdWfIUbqCv0xjUTmpjUdwUjiu39fwqBqsMKhZaFxC9RLh2ckKJgEsdlVRuzMdFUdTU7rUPtJxNmLYdISwjkBFIIdlMe8uMB42MTJkDSKJBbfkC7txWYqmoWPFEZjzMHYdB07mKr5KdhE3NS5aDSvZKBFO5UMekMoZfoRV7C3OVBLFwmZJ0gUTwxrSs8aHBXyCCNxXqns5xcX0AJ8ajUde9eQ4Z6N8NxrW2DqYI+4NZd8+UD1m+8KT2P4VjPZlC1143yn8aO4HjKXrZMgMAZB8qEexbTdc/wAP51lJZzVRrMDh8iBee58zU5FdXKazV6IwqI7jzH41OaguGnynqPnj21U2sdiV5e+c/wDm3vB9HFBP1o9a1n6UsOBjcQwPiLpC/wAP6vbLEnzKx/urCMSN66/YmWJ7t6edUHaakdp0FRukUlNf+je5/wAS6f8AMw19B5i3nH1tz6VpzWU/RujNjbRUfAt1nPRfcupPzYDzYVrylFZ36iC0y4tWMtRuKQU3FRkVO61GVoVFZ6oYnDBjPlI6xRJ1qs4oUpG2F0G1QxV+1hmdsqjYFmJICqo3Z2OiqOpqLLb/AOo38QQQe4nWD3plsB8J8J86L2PiPYUHwp8I/movYOr+VUmr9h6JYd6EWWq/ZalSEbt8iADHWivAeJNZfMusiCOorPZizQNeQAq9hDFRZ6N6bguOJcG+VuhoktwHavOsKdjRvC3mGxI9ayvJa12aoblCExj9avYYs2/w8zR40brw/wDSlfKY68mRCGZLmeD7yGsIhTNMFJSQI0MwdSDi3uJ+Gm4OvI16D+lqwTj0yrmFy3bCkfvFnRVJ21ySPX0wS4SWggggwQRBB21B2ro9+j5ss1Xe6oGnf12j8/nUV4yRqDpymB21GvppTLohj5n8a7IYmNKS2u/R9xNbGIQRJvXbdpmj4bTNDAfzM1s+Vs9a2j2ypIO40PmNK8lwl9lKsN1IZfNTI+oFe48ZwRgYhNbV7xqw/ZL+LK3TU6UVl19Bcu81A9TMKiekau4phFSNSOKFRUuVUuGrd6qGIeAT0BNCjcVjTlCCAkyUGgYjZrh3cz10HICqHvKh96XbX0HIVPFMsUcKNF7milo6tQvDN8HaiNrXN51UTVyy1X7JofaWr9hCfKlSWcMWVgymCNQRvRPC3nDTmJJ3mGB8wdKHW7qKYJ84BMedGsJiMOEzs7v4sot20Z7jNE9IVf4j5UZf0TbBXAWGYjwkzyUfgANKO2sFG5iNTmBUgbSRyrPYTizvmtXLJsowlFYTI6liQH35GR0qlfxGIw9wQxZJyhHJyOG/ZRtkY7ZSBP8AFV/4fXtle7uSNsMRh0XO1xSOQG58huaBv7YBmZvhtorlV5kqhIn6ad6wfEyS7spYAn4W+JCN0PQihmLxkpl6LH1P9ac/D55VfLqYdi+NC+qWbzQ0NbW4f2SrB8OxPIKxdCf3WB61F7QoPeG6qkFnLGRAUvD5D38W3L51nccJmpl4kXVVYksgg6nxAQFYjmQAB9eZqOrrXniT58UrlmXZiNCxIHISZpuIbwkeX41Zu7bCh155MVDX4RWr0D2Z/SG2HtW7VxfeIvgZYGtmIAE6ZhHrNefAVIgqpUXmX691vcNtYhPf4JxcQiSgMuvaNzzEb6c+WeuggwdxXmeGxdy02a2722/eR2Q/NTWw4V7Y3LhyYq4kFYOIuWFuugGwRUUF2O0uSB6eJYnxs/kVamu1FG4aHQ3VvA2wqsXuAJCkaFvEY5CD8qAXMZbaclwMJjNDBdTpmcjKpI1gtPrpTvNhc9y/HXdpPoOZ/t3qldEzPOrF0nn9aquaSw/D28rNzER9QZ+Q+tSzUl1hy+zz++wqCmoMw24opZMA0NsDUUQsGmmiNhTExoOfKiuEwzuVRAWd9FA5E8+2k60PwznLlB0YjTqeVbLCYpMDhjiDBuvKWhv8OjPHTMD5hFPWiTWXVz0IYbguFweVbsXb5jwxIB8th+Per/HuGh0R/evbdPgVGJ8J3lZhvM/OvKhxl2cuzksTJM6knlRG5xu6VkAtP80fODWkkRebovi8c6KTCXFWJzHIfmDM/OqS+0JysFFzLs1u5bGIsweQdIZR/tNZxDiMQ0Iivr+ygAHncMEf7mqxc4diU3ZUHa6FGn+8T50/K0/CT6lu8Xtu0SUY6QSWHaC8NHZvKaHYpN59CNvLsex1pMVKaXL2Y/ugi6T2JLFR60rYhwQvukUxEOrZyOXgSGilbv1cmfAfGITQ7YzsRWif3bSHBtt/CrR6q7T9R5UPxvDiD4HVx2IBjuJ09TWdjSUPa+xqJRJqziMG6Eq0SP3XVx6MpKn0NRJbNSo0LUsxXZAOc0qt2pByrNPGlKtzl/SlbyH1/OmDlxEcswJzZWzFS2sMVBEnU6nqafc4pdKquYZUnKuVIWTJjT706VXIppT7iq8qWRocB7UknLil94kQHtoiXkjYggKHHZ57Ec7l10bW2wdRoWGkmTy5dOYMEgnljitT4DFe7cE/CdGHakWZ8aBzUGapHPQyOR6jkagmhSraGoq9hxVS2NRRHDISNI3j6TTRRDBOQcwElQSB1YDw/WKl9vcSBeW0G0soltBH7KiGYttuCeerHpS8IbLcRiJCnMV65fFHrFZ/2ixJe+7MQWJ8RGxI3joJmByEVc+M83pT9/0+n9akt3j8QzZgRDTERzk89qpop5CT0An1pzEDVzPrp9+VTrXBA4x3kXHuXP4Q5j1JlR/4mmtiUQ6KifyjO3pmMk+oXtQ/37McqCB1/t/Wi/A+BNecIgLMd2/MnkPvvU+QySEtcQuE5cOhQndx4r7TGpuRKDbRMg6zvRnhvsNirgLMCgMkzMnnJG5mt9h+H4ThNj3t4qX5AAFmciQqLzPcxzJ01ov7GccGMwxukqHLOGtqRNsBiEUnfVQrZjuWMQNAajf2ePY/2Su29w3oDQx7bqMrAkagNl8UHQgx8Q89a9O9obyvmKOHWSMwMglTDQdjBBHmCOVefcXuZWSQMrkgnptr5a0j5u/QJky+EEHpE8x3G9MydasEB2aP2YgzvNOiRPMfEPzoXqsFipVHrSkR5fhXZY2pGeUU7ifxFcMLpINIDXLcj+nKmELoRvTJqd3moWFANaoWFPNMNMC+Au5kA5r4fQbfSKlih/C38RHUT8v80WikFRBV3DE1UQSQBudu9XsKqyMxIHMgZj6CRJ9RVIozwrCvdYqilmGpMgKoBkl2Ow03oJxG5hrRIH/EXJJZ5K2Ae3NxPSB0ajuIvG7Za1a/00/5YOZrrZSVNxtM5JER8IzCFkTWW9puEPh7nu3BDKoJ1mZ5xy8jrEGr9zljz769/wDA7F8RZ9JAX91QFX5Dc9zJ71S1NSW7ROwqymBcjT8NKytt+uiZPiXh6ywQc9zXpnCeJWcDYLsPFyA+JnjQDv8AgBPKvMuHPkeTy/rRO7c/WHGckImijmT+0fy9KSeuddxXjD4u61y+8SGyDxFUG4VQBJmInSSQSQBQplB3ANGTwbPcVUOVCJYnXLB+szoOxq1c9mSbyIjkowLFyNUCwGBA0J8Qjz7VWiZAbD8Ru21yo7Kv7uhX0VgQPSocXi3uRnM5ZjQDeJ28hRXiPAHS8LaHMrLmVmgQBocxHMGNhzFC8bg3tNlcQdwdwR1BpHMVBcZT4TE+X51JaxBBknz0pqWy5gCTUlnBnMQ2gAnTnO0fX5UKWHXmKYDyp1oZCVY+H9k8xP5Vzp99e4pg1h86jJ607NyNNakCGmE1xpCaYMamNUhphoCXAtDjvI+lFc5oLaaCD0IopNASW/r16dat2jUb4fLA5hZbbmxGnbarOFwztlyoxzMEXQwzmIQHadRp3FVWetH7OXkw6nEuuYglLSnYvALueygqPN+1AfaK8cTeliM7k5j200PkZFEsWwK3shBXDOuHU8myBmd/99wuw7MByFZ/DPncsSANlJ0BA78tZ12qrZOZ/LOT81rTcA9nrLZTdJCHYAfERA0O3MdeU0nErVtS4QQEmJ3k8tumXnzrrnEYQKf2RCiZgbmPOZ9e9B7+K8JncmayqpLb7ZnGNlc07D4mKTEJmfzpl/D5Dv8AfI1LYewuPijGG4sANZ0789tvnWLRyPvWiWGw9xtTCDq0jTsNzQVkaG9xTMZP+Ko8WurdtEftL4lPcbj1E/TpUNzB2kUF7zkwfhChQZMbyYj8apNkyko5kDSTOvy+lBSQmBUKmbm2vpy/r60y5dqAaL4jsIAGg0Gnc0xVB2NM8Sk9fQdf7Uy3e1yn07dqguBgd5qAzTMRdPv8xVc0/D3pEHeucT50wjNNNLNITQDTTDTzSUAwCpv1g1FFdTA8jbc9IE6xPTpRnhWJKZrxIjDWXZNNA8ZLUDr724jdTrQW2Kk43eyYZbY+K+2do/5drMiehc3Cf+2tFuRnm+gjBY51tvZB8DlWbrKZoAPIHNrG+VelXMNdIXsOXau4BgcyXHJACrzEz2AkfMkDXnsY74ymTGvT+2gpZ6h+tsXjckabVWv3tKpW8UVlfl60j3pFSqRHcuQwNWEhhB35HpQ521p1tzSMRtXCNFHi7feoohhcO7kB3Kjourn8hQiw5Ex8/v71orgsWFGadeZNBVveB2cDYTM9lWfqw94/nmYwvkIoL7ZXLF+XRBbIiIUctNSPvWgDcUcnQk9t6gxGMZtDpPnyqtROcurfCsPbVGd1zsdACNFHrpmP0qriVU/sgRVb9bIGUfelMa+aWrz2Zct9D86guWo3B8/MSPpU7vpVfKT6UG5Ej1286lzTrzG/9arljUmbY04CsJ1pop7DmKaRTDieQ/zTaWupg002nxTaAPYdCzBVEsxAA7kwB8zVsY9Tirrgg2rarYXcvkUhBctnLlDZlzkEicxGoJqkjlQzjdRIPQnY+Y1P+2huGDKGRgVbOJBEEFAwYEcoLLpS/WIzWqyqcyoERjuAPA8wQy/uyIMRGvLWgXFMG6fEhUH4SYI3I+IfynTeNdiKt4C8CIJgroJMCNSNeXMa9qLNiPBDEFSIKmGBHdaq5Yn3KwrmmM9H+KYa2ZFtSABIkyT1yzr+P1rPOINZ300l0gpVNMpy0jWbb1Zw4G7HToOZqmi1Yw5hhNAGsJbZh4QAPL8Bz8zNWcZgnVMz6g7bbjc6etdaxSgSKixeOzLE/X8qE+1RMCSubl15n51Xu4aOfzqyMZC5aha9NMKLp/g12winXXmmFTTUjbWlXmPlTWFLtQEttuVcyxSGnDpVAyKWKWK4UB0UzLT4pKaRO7ItueUCR5nKP/Y/WheHuljBksSTO5YneTuT+NF+PgJaRebsXPWEGVT657n/AIihVlWUGMp21hW06GRI5bgbUuvuFzdmruHUhiDI0gjVTB3B7dquWsqMGzMBGu5KgdiYOwHfSosNjFEAyVIgjXwuZCgBiQBMTljQ9oqfD4T3ql1YFVfLcXZl/cO/iU+ITpqDpoDR/R/2ue9V0X/TyqDm1bO8SJIbKAunQT33nO8WsqDKiIJnUmTME67ag1pSgA0+4/zQDiAEEazrGmmo/qPrS6HIJTlpAK149lENrMl5WYJmaGBkgkHIAPEu0RrvOXaok1Vsn1m0FTWkBOuk9KvYXgV5mYBRCbsScs9NpnfTy6iWY/h1y1DMhCkwrgHIxAmA3WOW+/Q0YNhbVogwSNOmvyqbE4ZcsiZ++VV7F7rvU73pEUBHbsCCTvUT2eh+dS+90ioXfpTCO7lAAAljqSeXaKj5USucEuKgdmRZ/YLHPoYMqAYI5zEQeelOw+AQXcl24uXL8aGQGMaEEDYnUGDTLQZhXURxli2vhDBoJGZdQRsCp58z61SRN+1OGROlLXRBpSKYdSCnCuIoDlpIpRSVSVv2rxOe+wHwoAi+S7//AGLfOhdk/MU3EOWZmO5JP1rrZ+/71nbvVpyZJFkvoSal4ZcZCWBOuhHUTOvqAR0IB5VXdZGlS4ciBFI2k97I9KFY5JPoSfIampsJifDEAxzObb0NMxN93UIxAXWAOYJMyYk/FOpOw6U7dKTAZrYDgCN1E7CdAfrzogmIdA4DMvIwYM6jzG5oeq+IDvU7t4T986kxPgvFLlkDIxhmJZdwxOnPYmBqOg6CiWP4+cS9u1iGcWQZfJq+kmUzSokgculAMNEDyn86iD+M+R/CjR4z61Y9n8G6n3eNgsf9M3l90iAZj/qmCdcoUFYGs8oqynsI+TN+tYGDBDfrPhM9whEVlLb7Hp/erBuyBJJCzE7AEzpRpeN/doMXwTBWVyXcQzuFDG7ZIdC7l8qKpXxKAiyZEljqNqDYvD4ZApR7ztAmciAOACW2aVJOg3EamqNw+GO/5imOdvT5wKeic/ys3sYzgMzSSoB6mBGvXpr0FVLj+MH713/Gm2TpHmKjvHUUopId/pFS+7yjvvPf8t6XDJHi67Ul5vvqa1kyIt2qzUo2ppNOWkp1OikinAVQJFdTopk0EHmumuNLFYmsjQ7gx02PlTl8JjkdR586r22q1lzD70NMLeFeDMToZG0gCd+W1TYog6xENoNTAOka1BaVggaPilD2YHVT0MQfJtNiBcyFk1gGIgcufz1pwAmI0f60rvpTsZuD6Gq7nQVNCyj6Adt/kPzqMNrP3qKjVzSig9WVfb76/wBanzHqaorTwzUBYdtPvtUZfQeVRGTzpAtGDUiNv5/1FdJMdqjq3aUDWIHc7etVIVqZnyj6f471UYknWns/M+g/Ooqq0pHUq0kU4Cg0hFcK4V1UC0ypKbFMg6uropawNwqzaePWq9SI1AEcBdUMQ2qOAGA3BHwsO45ecbEgz3HYMR0Hh0lXUkDNyMb6biCDrIoaX0ywImZgTMR8UTHbbnV3DYhfhcSp3jwkbTB5HTyPOKehC6B51gjtInrvpQ+4hUlSIIMEdCKK43COihx4kYnxrtr+w6/sNEaH0JGtC7ineNOvKlRDRSg063bJ/Kue2RuKAUNTw1QilFASg1000UqiTHWmEuHSTPy86leD/KNv4j18unzqRLRjKAT5Ak/SoXOsbRy6VZfUbmTSqtKopaDIRXAUtKBTkByUtItOIphwpIpRXRTSGmuilynpShD0NYLJSqa7L2NdFASqakknc1GvlUltyPXfTX/FBLaXSxAc+AADKNsoOYKewOtaNOEe+sZ0JZdVKqCFXfnoI37/AI1lhoSNTqdY5datYbEuqOiMwVxOXkSv4GJGnYVcuFZrm4YyTl8ZHIb+nWh7WGaSoJA1Om2v476dqtXMQQIUGBzMyfQbeX41BcxLndn0JI1OhO5+lK2CaqEUlXreHDgsxy9T/aKqNb1MTE6GIkctOVLDcDVnBpu3oKrIlELZ0AiI02+5quSp5OkH76a8+lNuvIhizRtJ2Pry30pWbt9KjMnlTJGRSU4qelcBVKJTgK6KUChLgKeRoKaBUijQ9qYNFNp+Wky0w//Z'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  '34',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Posts',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20.0),
                            Column(
                              children: [
                                Text(
                                  '578',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Followers',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20.0),
                            Column(
                              children: [
                                Text(
                                  '345',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Following',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // SizedBox(height: 10),
                // Followers, following and posts count
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Abdul Hadi',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // SizedBox(height: 10),
                          Text(
                            'Student',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 170.0,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Do something when button 1 is pressed.
                          },
                          child: Text('Edit Profile '),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.grey),
                            textStyle: MaterialStateProperty.all<TextStyle>(
                                TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 170.0,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Do something when button 1 is pressed.
                          },
                          child: Text('Share Profile '),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.grey),
                            textStyle: MaterialStateProperty.all<TextStyle>(
                                TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      // width: 10.0,
                      child: ElevatedButton(
                        onPressed: () {
                          // Do something when button 1 is pressed.
                        },
                        child: Icon(Icons.add),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.grey),
                          textStyle: MaterialStateProperty.all<TextStyle>(
                              TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
                TabBar(
                  controller: _tabController,
                  tabs: [
                  Tab(
                    icon: Icon(Icons.grid_view),
                  ),
                  Tab(
                    icon: Icon(Icons.video_collection_rounded),
                  ),
                  Tab(
                    icon: Icon(Icons.person_outline),
                  ),
                ]),
                 Container(
                   height: 500,
                   child: TabBarView(
                    controller: _tabController,
                    children: <Widget>[
                      Center(
                        child: Icon(Icons.add_circle_outline , color: Colors.white, size: 100.0,),
                      ),
                      Center(
                        child: Text("Nothing Here" , style: TextStyle(color: Colors.white, fontSize:30.0),),
                      ),
                      Center(
                        child: Text("Nothing Here" , style: TextStyle(color: Colors.white, fontSize:30.0),),
                      ),
                    ],
                ),
                 ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                backgroundColor: Colors.black,
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                backgroundColor: Colors.grey,
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                backgroundColor: Colors.grey,
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_camera_front_rounded),
                backgroundColor: Colors.grey,
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                backgroundColor: Colors.grey,
                label: '',
              ),
            ],
          ),
        ));
  }
}
