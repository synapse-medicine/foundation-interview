import './App.css'
import { Card, CardContent, CardFooter, CardHeader } from './components/ui/card'

function App() {
  return (
    <>
      <Card>
        <CardHeader>
          <div className='grow text-left'>
            <div className='font-bold'>
              Thériaque
            </div>
            <div className='text-sm font-base'>
              Recherche de traitements
            </div>
          </div>
        </CardHeader>
        <CardContent>
          Develop here
        </CardContent>
        <CardFooter className='justify-between'>
            <div className='flex gap-3 text-xs'>
              <span>Resources:</span>
              <a href='https://tailwindcss.com/docs' target='_blank' className='text-blue-500 underline'>
              TailwindCSS
              </a>
              <a href='https://www.neobrutalism.dev/styling' target='_blank' className='text-blue-500 underline'>
              Neobrutalism
              </a>
            </div>
            <div className='grow text-xs text-right'>
            Foundation Technical Test
            </div>
        </CardFooter>
      </Card>
    </>
  )
}

export default App
